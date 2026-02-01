import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fitai_app/core/providers/wake_time_ssot_provider.dart';
import 'package:fitai_app/core/theme/app_theme.dart';
import 'package:fitai_app/l10n/app_localizations.dart';

/// 正式 HOME 画面
/// Night Cycle v1
///
/// UI要素（上から順）：
/// 1. AppBar（HOME）
/// 2. Time Context（After waking · Xh）
/// 3. 状態サマリー
/// 4. 夜型特有のアドバイス
/// 5. Next Action
/// 6. Log導線（Food / Water / Weight）
/// 7. Pro導線
/// 8. Bottom Navigation（Home / Log / Coach / Chat / Settings）
class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  int? _hoursSinceWaking;
  int _selectedNavIndex = 0;

  @override
  void initState() {
    super.initState();
    _calculateHoursSinceWaking();
  }

  /// 起床後経過時間を計算
  /// SSOT Provider から起床時刻を取得し、現在時刻との差を計算
  Future<void> _calculateHoursSinceWaking() async {
    final wakeTime = await ref.read(currentWakeTimeProvider.future);
    if (!mounted) return;
    if (wakeTime == null) {
      setState(() {
        _hoursSinceWaking = null;
      });
      return;
    }

    final now = DateTime.now();
    final todayWakeTime = DateTime(
      now.year,
      now.month,
      now.day,
      wakeTime.hour,
      wakeTime.minute,
    );

    DateTime wakeDateTime = todayWakeTime;
    if (wakeDateTime.isAfter(now)) {
      wakeDateTime = wakeDateTime.subtract(const Duration(days: 1));
    }

    final difference = now.difference(wakeDateTime);
    final hours = difference.inHours;

    if (mounted) {
      setState(() {
        _hoursSinceWaking = hours;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final wakeTimeAsync = ref.watch(currentWakeTimeProvider);

    return wakeTimeAsync.when(
      data: (wakeTime) {
        ref.listen(currentWakeTimeProvider, (previous, next) {
          next.whenData((_) {
            if (mounted) _calculateHoursSinceWaking();
          });
        });

        if (wakeTime == null) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        return _buildHomeScaffold(context);
      },
      loading: () => const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
      error: (error, stack) => Scaffold(
        body: Center(
          child: Text('Error: $error'),
        ),
      ),
    );
  }

  Widget _buildHomeScaffold(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final hours = _hoursSinceWaking;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          l10n.homeTitle,
          style: theme.textTheme.headlineLarge,
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 8),
          _buildTimeContext(theme, l10n, hours),
          const SizedBox(height: 24),
          _buildStatusSummary(theme, l10n),
          const SizedBox(height: 24),
          _buildNightShiftAdvice(theme, l10n),
          const SizedBox(height: 24),
          _buildNextAction(theme, l10n),
          const SizedBox(height: 32),
          _buildLogShortcuts(theme, l10n),
          const SizedBox(height: 24),
          _buildProBanner(theme, l10n),
          const SizedBox(height: 32),
        ],
      ),
      bottomNavigationBar: _buildBottomNav(l10n),
    );
  }

  // ─── 2. Time Context ───

  Widget _buildTimeContext(ThemeData theme, AppLocalizations l10n, int? hours) {
    final text = hours != null
        ? l10n.timing_after_waking_with_hours(hours)
        : l10n.timing_after_waking_with_placeholder;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 20),
      decoration: BoxDecoration(
        color: AppTheme.primaryBlue,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        text,
        style: theme.textTheme.headlineLarge?.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  // ─── 3. 状態サマリー ───

  Widget _buildStatusSummary(ThemeData theme, AppLocalizations l10n) {
    return Text(
      l10n.home_status_summary,
      style: theme.textTheme.bodyMedium,
    );
  }

  // ─── 4. 夜型特有のアドバイス ───

  Widget _buildNightShiftAdvice(ThemeData theme, AppLocalizations l10n) {
    final adviceList = [
      l10n.home_advice_hydration,
      l10n.home_advice_meal_timing,
      l10n.home_advice_light,
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.home_advice_title,
          style: theme.textTheme.titleMedium,
        ),
        const SizedBox(height: 12),
        ...adviceList.map((advice) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 6),
                    width: 6,
                    height: 6,
                    decoration: const BoxDecoration(
                      color: AppTheme.secondaryBlue,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      advice,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: AppTheme.black87,
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }

  // ─── 5. Next Action ───

  Widget _buildNextAction(ThemeData theme, AppLocalizations l10n) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppTheme.primaryBlue,
          width: 1.5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.home_next_action_label,
            style: theme.textTheme.labelMedium?.copyWith(
              color: AppTheme.primaryBlue,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            l10n.home_next_action_default,
            style: theme.textTheme.titleLarge?.copyWith(
              color: AppTheme.primaryBlue,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  // ─── 6. Log導線 ───

  Widget _buildLogShortcuts(ThemeData theme, AppLocalizations l10n) {
    return Row(
      children: [
        _buildLogItem(theme, Icons.restaurant_outlined, l10n.home_quick_log_food),
        const SizedBox(width: 12),
        _buildLogItem(theme, Icons.water_drop_outlined, l10n.home_quick_log_water),
        const SizedBox(width: 12),
        _buildLogItem(theme, Icons.monitor_weight_outlined, l10n.home_quick_log_weight),
      ],
    );
  }

  Widget _buildLogItem(ThemeData theme, IconData icon, String label) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: const Color(0xFFE0E0E0),
          ),
        ),
        child: Column(
          children: [
            Icon(
              icon,
              size: 24,
              color: AppTheme.black54,
            ),
            const SizedBox(height: 6),
            Text(
              label,
              style: theme.textTheme.labelMedium?.copyWith(
                color: AppTheme.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ─── 7. Pro導線 ───

  Widget _buildProBanner(ThemeData theme, AppLocalizations l10n) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F8FF),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.home_pro_title,
                  style: theme.textTheme.titleSmall,
                ),
                const SizedBox(height: 4),
                Text(
                  l10n.home_pro_description,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: AppTheme.black45,
          ),
        ],
      ),
    );
  }

  // ─── 8. Bottom Navigation ───

  Widget _buildBottomNav(AppLocalizations l10n) {
    return BottomNavigationBar(
      currentIndex: _selectedNavIndex,
      onTap: (index) {
        setState(() {
          _selectedNavIndex = index;
        });
      },
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: AppTheme.primaryBlue,
      unselectedItemColor: AppTheme.black45,
      selectedFontSize: 11,
      unselectedFontSize: 11,
      elevation: 1,
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.home_outlined),
          activeIcon: const Icon(Icons.home),
          label: l10n.homeTitle,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.edit_note_outlined),
          activeIcon: const Icon(Icons.edit_note),
          label: l10n.logTitle,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.auto_awesome_outlined),
          activeIcon: const Icon(Icons.auto_awesome),
          label: l10n.coachTitle,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.chat_bubble_outline),
          activeIcon: const Icon(Icons.chat_bubble),
          label: l10n.chatTitle,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.settings_outlined),
          activeIcon: const Icon(Icons.settings),
          label: l10n.settingsTitle,
        ),
      ],
    );
  }
}
