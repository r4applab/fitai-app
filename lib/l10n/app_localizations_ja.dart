// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get hello => 'こんにちは';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'キャンセル';

  @override
  String get appTitle => 'Night Cycle';

  @override
  String get homeTitle => 'ホーム';

  @override
  String get logTitle => 'ログ';

  @override
  String get coachTitle => 'コーチ';

  @override
  String get settingsTitle => '設定';

  @override
  String get selectLanguage => '言語を選択してください';

  @override
  String get selectLanguageDescription => 'FitAiで使用する言語を選択してください。';

  @override
  String get continueButton => '続ける';

  @override
  String get accountPrivacySection => 'アカウント / プライバシー';

  @override
  String get changeGoal => '目標を変更';

  @override
  String get weightAlwaysVisible => '体重を常時表示';

  @override
  String get deleteAllData => 'すべてのデータを削除';

  @override
  String get notificationsSection => '通知';

  @override
  String get dailyReminder => 'デイリーレマインダー';

  @override
  String get waterReminder => '水分補給リマインダー';

  @override
  String get languageSection => '言語';

  @override
  String get appLanguage => 'アプリの言語';

  @override
  String get languageSettingsTitle => '言語';

  @override
  String get languageSettingsDescription => '使いやすいと感じる言語を選んでください。';

  @override
  String get languageSettingsUpdateFailed => 'うまく更新できなかったみたい。\nもう一度言語を選び直してみて。';

  @override
  String get languageLabelEnglish => 'English';

  @override
  String get languageLabelJapanese => '日本語';

  @override
  String get languageLabelSpanish => 'Español';

  @override
  String get languageLabelPortugueseBrazil => 'Português (Brasil)';

  @override
  String get languageLabelHindi => 'हिन्दी';

  @override
  String get languageLabelIndonesian => 'Bahasa Indonesia';

  @override
  String get aiSettingsSection => 'AI設定';

  @override
  String get coachingLevel => 'コーチングレベル';

  @override
  String get basic => 'ベーシック';

  @override
  String get pro => 'プロ';

  @override
  String get proRequiresPremium => 'Premiumプランが必要です';

  @override
  String get weeklyAiReport => '週次AIレポート';

  @override
  String get advancedFoodAnalysis => '高度な食事分析';

  @override
  String get otherSection => 'その他';

  @override
  String get terms => '利用規約';

  @override
  String get privacyPolicy => 'プライバシーポリシー';

  @override
  String get appVersion => 'アプリバージョン';

  @override
  String get settingsProfile => 'プロフィール';

  @override
  String get settingsWakeTime => '起床時刻';

  @override
  String get settingsWakeTimeSubtitle => '起床時刻';

  @override
  String get settingsWeightDisplay => '体重表示';

  @override
  String get settingsLanguage => '言語';

  @override
  String get settingsNotifications => '通知';

  @override
  String get settingsLegal => '法的情報';

  @override
  String get settingsDeleteAccount => 'アカウント削除';

  @override
  String get settingsWeightDisplayShown => '表示';

  @override
  String get settingsWeightDisplayHidden => '非表示';

  @override
  String get profileWakeTimeDescription => 'これはあなたの1日の開始です。';

  @override
  String get notificationsTitle => '通知';

  @override
  String get notificationsDescription => '夜型の生活を邪魔しない、必要な通知だけにします。';

  @override
  String get notificationsHealthCheckTitle => '体調チェック';

  @override
  String get notificationsHealthCheckSubtitle => '体調を守るための穏やかな通知';

  @override
  String get notificationsLongAwakeTitle => '長時間起床の通知';

  @override
  String get notificationsLongAwakeSubtitle => '長く起きているときの通知';

  @override
  String get notificationsHydrationTitle => '水分の通知';

  @override
  String get notificationsHydrationSubtitle => '水分が必要そうなときの通知';

  @override
  String get notificationsUpdateFailed => '通知の更新に失敗しました。\n少し時間を置いて試してみてください。';

  @override
  String get legalPlaceholder => '法的事項はこちらに表示されます。';

  @override
  String get deleteAccountPlaceholder => 'アカウント削除はこちらから行えます。';

  @override
  String get coachingLevelDialogTitle => 'コーチングレベル';

  @override
  String get premiumFeature => 'Premium機能';

  @override
  String get premiumUpgradeRequired =>
      'この機能をご利用いただくには、Premiumプランへのアップグレードが必要です。';

  @override
  String get upgradeToPremium => 'Premiumにアップグレード';

  @override
  String get deleteAllDataTitle => 'すべてのデータを削除';

  @override
  String get deleteAllDataConfirmation => 'この操作は取り消せません。本当にすべてのデータを削除しますか？';

  @override
  String get deleteAllDataSuccess => 'すべてのデータを削除しました';

  @override
  String get delete => '削除';

  @override
  String get timing_title => 'タイミング';

  @override
  String get timing_after_waking => '起床後';

  @override
  String timing_after_waking_with_hours(int hours) {
    return '起床後 · $hours時間';
  }

  @override
  String get timing_after_waking_with_placeholder => '起床後 · --時間';

  @override
  String get day_type_title => '日のタイプ';

  @override
  String get day_type_suggested => '提案された日のタイプ';

  @override
  String get day_type_change_hint => 'いつでも変更できます';

  @override
  String get day_type_night_shift => '夜勤';

  @override
  String get day_type_busy => '忙しい日';

  @override
  String get day_type_eating_out => '外食';

  @override
  String get day_type_recovery => '回復';

  @override
  String get day_type_regular => '通常';

  @override
  String get day_type_night_shift_description => '遅い時間や夜勤のスケジュール向け';

  @override
  String get day_type_busy_description => '忙しい日や慌ただしい日向け';

  @override
  String get day_type_eating_out_description => '外食がある日向け';

  @override
  String get day_type_recovery_description => '休息や回復の日向け';

  @override
  String get day_type_regular_description => '通常のルーティンの日向け';

  @override
  String get ai_empathy_night_shift => '夜勤ではよくあることだよ。';

  @override
  String get ai_acceptance_general => '今日は完璧である必要はない。';

  @override
  String get ai_next_step_light_meal => '次の食事はシンプルにしよう。';

  @override
  String get ai_next_step_anytime_ok => '軽い選択で十分だよ。';

  @override
  String get ai_summary_no_pressure => '今日の流れに合っている。';

  @override
  String get home_current_state => 'Current State';

  @override
  String get home_next_action => 'Next Action';

  @override
  String get home_quick_log_food => 'Food';

  @override
  String get home_quick_log_water => 'Water';

  @override
  String get home_quick_log_weight => 'Weight';

  @override
  String get home_error_state_message => 'うまく整理できなかったみたい。まずはログだけでも大丈夫。';

  @override
  String get home_retry => 'もう一度';

  @override
  String get home_empty_state_message => 'まだ記録がなくても大丈夫。今の体の状態から、一緒に始めていこう。';

  @override
  String get home_premium_detail_hint => '※ 詳しい説明は Coach Detail で確認できます';

  @override
  String get logHomeSubtitle => '記録は事実として残ります';

  @override
  String get logHomeFoodTitle => '食事ログ';

  @override
  String get logHomeFoodDescription => '過去の食事を一覧で見る';

  @override
  String get logHomeWaterTitle => '水分ログ';

  @override
  String get logHomeWaterDescription => '水分摂取の記録を確認する';

  @override
  String get logHomeWeightTitle => '体重ログ';

  @override
  String get logHomeWeightDescription => '体重の記録を確認する';

  @override
  String get logHomeRecentStateTitle => '最近の様子';

  @override
  String get logHomeWeightRecorded => '体重を記録済み';

  @override
  String get logHomeEmptyStateMessage => 'まだ表示できる記録はありません。\nそれでも問題ありません。';

  @override
  String get foodDeleteConfirmTitle => '削除確認';

  @override
  String get foodDeleteConfirmMessage => 'この食事を削除しますか？';

  @override
  String get foodDeleteRecordConfirmMessage => 'この記録を削除しますか？';

  @override
  String get deleteFailedMessage => '削除できませんでした';

  @override
  String get foodDetailTitle => '食事詳細';

  @override
  String get editFeatureComingSoon => '編集機能は準備中です';

  @override
  String get foodDetailNotAvailableMessage => '今はこの記録を表示できないみたい。一覧に戻っても大丈夫。';

  @override
  String get backToList => '一覧に戻る';

  @override
  String get deleteFailedFriendlyMessage => 'うまく削除できなかったみたい。もう一度試してもいいよ。';

  @override
  String get nightCycleIntro1Title => 'Night Cycleへようこそ';

  @override
  String get nightCycleIntro1Description =>
      'このアプリは、夜勤や夜型の生活をする人のためのものです。\n\n夜に食べることは普通のこと。問題ではありません。\n\nあなたの生活を変えさせず、守るためのツールです。';

  @override
  String get nightCycleIntro2Title => '評価も目標もありません';

  @override
  String get nightCycleIntro2Description =>
      'このアプリには、達成率やスコア、グラフはありません。\n\nただ、今の体の状態を知り、次にできることを1つだけ提案します。\n\n判断に疲れた時でも、安心して使えるツールです。';

  @override
  String get wakeTimeSetupTitle => '起床時刻を設定';

  @override
  String get wakeTimeSetupDescription =>
      'これは、あなたにとっての「1日の始まり」です。\n\n社会時間（朝・昼・夜）は使いません。この時刻を基準に、すべてを計算していきます。';

  @override
  String get wakeTimeSetupTapToChange => 'タップして変更';

  @override
  String get wakeTimeSettingsPlaceholder => '起床時刻設定はこちらに表示されます。';

  @override
  String get language_selection_title => '言語を選択';

  @override
  String get languageSelectionScreenTitle => '言語を選択';

  @override
  String get languageSelectionContinue => '続ける';

  @override
  String get homeChangeWakeTime => '起床時刻を変更';

  @override
  String get homeTestOpenAiApi => 'OpenAI APIをテスト';

  @override
  String get homeOpenChat => 'チャットを開く';

  @override
  String get homeScreenDebugTag => 'HOME_SCREEN';

  @override
  String get intro_phase1_title => 'Night Cycleについて';

  @override
  String get intro_phase1_message1 =>
      'Night Cycleは、夜勤で働く人や\n夜に生きる人のために作られています。';

  @override
  String get intro_phase1_message2 => 'このアプリは\n朝型中心の生活には対応していません。';

  @override
  String get intro_phase1_message3 => '夜に起きていることは、ここでは普通のことです。';

  @override
  String get intro_phase2_title => 'Night Cycle';

  @override
  String get intro_phase2_message1 => 'すべては時計の時刻ではなく、\nあなたの起床時刻から計算されます。';

  @override
  String get intro_phase2_message2 => '夜に食べることは前提であり、評価されません。';

  @override
  String get intro_phase2_message3 => 'あなたの今のリズムに合った\n次の行動を1つだけ提案します。';

  @override
  String get wakeTimeSetupSelectTime => '時刻を選択';

  @override
  String wakeTimeSetupSelected(String time) {
    return '選択済み: $time';
  }

  @override
  String get wakeTimeSetupPleaseSelect => '起床時刻を選択してください';

  @override
  String get chatTitle => 'チャット';

  @override
  String get home_advice_title => 'あなたのサイクルに合わせて';

  @override
  String get home_status_summary => '現在のフェーズにいます。急ぐ必要はありません。';

  @override
  String get home_advice_hydration => '食事の合間に水分を摂りましょう。';

  @override
  String get home_advice_meal_timing => '空腹を感じたら食べましょう — あなたのスケジュールで大丈夫です。';

  @override
  String get home_advice_light => '眠る前に明るい光を控えましょう。';

  @override
  String get home_next_action_label => '次にやること';

  @override
  String get home_next_action_default => 'コップ一杯の水を飲みましょう。';

  @override
  String get home_pro_title => 'Night Cycle Pro';

  @override
  String get home_pro_description => 'あなたのリズムをより深く理解する。';
}
