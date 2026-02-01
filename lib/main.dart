// Night Cycle v1 フェーズ1-1: Language Selection（正式SSOT確立）
// フェーズ1-3: Wake Time Setup（SSOT 正式版）

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fitai_app/l10n/app_localizations.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:fitai_app/core/theme/app_theme.dart';
import 'package:fitai_app/core/providers/language_ssot_provider.dart';
import 'package:fitai_app/core/providers/wake_time_ssot_provider.dart';
import 'package:fitai_app/presentation/home/screens/home_screen.dart';
import 'package:fitai_app/presentation/onboarding/screens/language_selection_phase1_screen.dart';
import 'package:fitai_app/presentation/onboarding/screens/wake_time_setup_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // タスク 0-4-1: アプリ起動時に dotenv を初期化
  try {
    await dotenv.load(fileName: '.env');
  } catch (e) {
    // .env ファイルが存在しない場合はエラーを無視（APIキー未設定として扱う）
  }

  // フェーズ1-3: Hiveの初期化
  await Hive.initFlutter();

  runApp(
    const ProviderScope(
      child: FitAiApp(),
    ),
  );
}

class FitAiApp extends ConsumerStatefulWidget {
  const FitAiApp({super.key});

  @override
  ConsumerState<FitAiApp> createState() => _FitAiAppState();
}

class _FitAiAppState extends ConsumerState<FitAiApp> {
  /// 言語コードからLocaleを生成
  Locale? _languageCodeToLocale(String? languageCode) {
    if (languageCode == null) {
      return null;
    }
    if (languageCode == 'pt-BR') {
      return const Locale('pt', 'BR');
    }
    return Locale(languageCode);
  }

  @override
  Widget build(BuildContext context) {
    final languageAsync = ref.watch(currentLanguageCodeProvider);
    final wakeTimeAsync = ref.watch(currentWakeTimeProvider);

    // 言語コードからlocaleを決定（未設定ならnull）
    final locale = languageAsync.whenOrNull(
      data: (code) => _languageCodeToLocale(code),
    );

    return MaterialApp(
      title: 'Night Cycle',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      locale: locale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: _buildHome(languageAsync, wakeTimeAsync),
    );
  }

  /// 全分岐で必ずWidgetを返す起動画面ルーティング
  Widget _buildHome(
    AsyncValue<String?> languageAsync,
    AsyncValue<TimeOfDay?> wakeTimeAsync,
  ) {
    // どちらかがロード中 → ローディング表示
    if (languageAsync.isLoading || wakeTimeAsync.isLoading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    // 言語が未設定またはエラー → 言語選択画面
    final languageCode = languageAsync.valueOrNull;
    if (languageAsync.hasError || languageCode == null) {
      return const LanguageSelectionPhase1Screen();
    }

    // 起床時刻が未設定またはエラー → 起床時刻設定画面
    final wakeTime = wakeTimeAsync.valueOrNull;
    if (wakeTimeAsync.hasError || wakeTime == null) {
      return const WakeTimeSetupScreen();
    }

    // 両方設定済み → ホーム画面
    return const HomeScreen();
  }
}
