import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fitai_app/core/providers/language_ssot_provider.dart';
import 'package:fitai_app/core/providers/wake_time_ssot_provider.dart';
import 'package:fitai_app/l10n/app_localizations.dart';
import 'package:fitai_app/presentation/home/screens/home_screen.dart';

/// 起床時間設定画面
/// Night Cycle v1 フェーズ1-3: Wake Time Setup（SSOT 正式版）
/// 
/// 要件：
/// - 時刻ピッカーを表示
/// - ユーザーが時刻を選択できる
/// - 選択した時刻が画面内に表示される
/// - Hive に保存・復元（SSOT Provider経由）
/// - 起床時刻が必須入力
/// - 起床時刻が未入力の場合は次へ進めない
class WakeTimeSetupScreen extends ConsumerStatefulWidget {
  const WakeTimeSetupScreen({super.key});

  @override
  ConsumerState<WakeTimeSetupScreen> createState() => _WakeTimeSetupScreenState();
}

class _WakeTimeSetupScreenState extends ConsumerState<WakeTimeSetupScreen> {
  TimeOfDay? _selectedTime;

  @override
  void initState() {
    super.initState();
    _loadSavedTime();
  }

  /// SSOT Provider から保存された時刻を読み込む
  Future<void> _loadSavedTime() async {
    final savedTime = await ref.read(currentWakeTimeProvider.future);
    if (savedTime != null) {
      setState(() {
        _selectedTime = savedTime;
      });
    }
  }

  /// 時刻ピッカーを表示
  Future<void> _selectTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime ?? TimeOfDay.now(),
    );

    if (picked != null) {
      setState(() {
        _selectedTime = picked;
      });
      // SSOT Provider経由でHiveに保存
      final repository = ref.read(wakeTimeRepositoryProvider);
      await saveWakeTime(
        repository: repository,
        wakeTime: picked,
        onSaved: () {
          // Providerの再読み込みをトリガー
          ref.invalidate(currentWakeTimeProvider);
        },
      );
    }
  }

  /// 時刻を文字列に変換（HH:mm形式）
  String _formatTime(TimeOfDay time) {
    final hour = time.hour.toString().padLeft(2, '0');
    final minute = time.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }

  /// 次へ進む（オンボーディング完了 → HomeScreenへ遷移）
  /// 両SSOTプロバイダーをinvalidateしてFitAiAppの状態を更新し、
  /// Navigator.pushAndRemoveUntilでオンボーディングのスタックを
  /// すべてクリアしてHomeScreenに遷移する。
  void _navigateToHome() {
    if (_selectedTime != null) {
      ref.invalidate(currentLanguageCodeProvider);
      ref.invalidate(currentWakeTimeProvider);

      if (mounted) {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
          (route) => false,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 48),
              // タイトル
              Text(
                l10n.wakeTimeSetupTitle,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const SizedBox(height: 48),
              // 時刻ピッカーボタン
              ElevatedButton(
                onPressed: _selectTime,
                child: Text(l10n.wakeTimeSetupSelectTime),
              ),
              const SizedBox(height: 24),
              // 選択した時刻を表示
              if (_selectedTime != null)
                Text(
                  l10n.wakeTimeSetupSelected(_formatTime(_selectedTime!)),
                  style: Theme.of(context).textTheme.titleLarge,
                )
              else
                Text(
                  l10n.wakeTimeSetupPleaseSelect,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.grey,
                      ),
                ),
              const Spacer(),
              // 次へ進むボタン（必須入力チェック付き）
              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: ElevatedButton(
                  onPressed: _selectedTime != null ? _navigateToHome : null,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 48),
                  ),
                  child: Text(l10n.continueButton),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
