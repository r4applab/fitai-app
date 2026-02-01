// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get hello => 'Hello';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Cancel';

  @override
  String get appTitle => 'Night Cycle';

  @override
  String get homeTitle => 'Home';

  @override
  String get logTitle => 'Log';

  @override
  String get coachTitle => 'Coach';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get selectLanguage => 'Select your language';

  @override
  String get selectLanguageDescription =>
      'Choose the language you prefer for the FitAi experience.';

  @override
  String get continueButton => 'Continue';

  @override
  String get accountPrivacySection => 'Account / Privacy';

  @override
  String get changeGoal => 'Change Goal';

  @override
  String get weightAlwaysVisible => 'Weight Always Visible';

  @override
  String get deleteAllData => 'Delete All Data';

  @override
  String get notificationsSection => 'Notifications';

  @override
  String get dailyReminder => 'Daily Reminder';

  @override
  String get waterReminder => 'Water Reminder';

  @override
  String get languageSection => 'Language';

  @override
  String get appLanguage => 'App Language';

  @override
  String get languageSettingsTitle => 'Language';

  @override
  String get languageSettingsDescription =>
      'Choose the language that feels easiest for you.';

  @override
  String get languageSettingsUpdateFailed =>
      'Something didn\'t update properly.\nYou can try selecting the language again.';

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
  String get aiSettingsSection => 'AI Settings';

  @override
  String get coachingLevel => 'Coaching Level';

  @override
  String get basic => 'Basic';

  @override
  String get pro => 'Pro';

  @override
  String get proRequiresPremium => 'Premium plan required';

  @override
  String get weeklyAiReport => 'Weekly AI Report';

  @override
  String get advancedFoodAnalysis => 'Advanced Food Analysis';

  @override
  String get otherSection => 'Other';

  @override
  String get terms => 'Terms';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get appVersion => 'App Version';

  @override
  String get settingsProfile => 'Profile';

  @override
  String get settingsWakeTime => 'Wake Time';

  @override
  String get settingsWakeTimeSubtitle => 'Wake time';

  @override
  String get settingsWeightDisplay => 'Weight Display';

  @override
  String get settingsLanguage => 'Language';

  @override
  String get settingsNotifications => 'Notifications';

  @override
  String get settingsLegal => 'Legal';

  @override
  String get settingsDeleteAccount => 'Delete Account';

  @override
  String get settingsWeightDisplayShown => 'Shown';

  @override
  String get settingsWeightDisplayHidden => 'Hidden';

  @override
  String get profileWakeTimeDescription => 'This is the start of your day.';

  @override
  String get notificationsTitle => 'Notifications';

  @override
  String get notificationsDescription =>
      'Only gentle reminders that respect your night routine.';

  @override
  String get notificationsHealthCheckTitle => 'Health Check Reminder';

  @override
  String get notificationsHealthCheckSubtitle =>
      'Gentle reminders for your well-being';

  @override
  String get notificationsLongAwakeTitle => 'Long Awake Reminder';

  @override
  String get notificationsLongAwakeSubtitle =>
      'When you\'ve been awake for a long time';

  @override
  String get notificationsHydrationTitle => 'Hydration Nudge';

  @override
  String get notificationsHydrationSubtitle => 'When you might need more water';

  @override
  String get notificationsUpdateFailed =>
      'Notification settings couldn\'t be updated right now.\nYou can try again later.';

  @override
  String get legalPlaceholder => 'Legal information will appear here.';

  @override
  String get deleteAccountPlaceholder =>
      'You can delete your account from here.';

  @override
  String get coachingLevelDialogTitle => 'Coaching Level';

  @override
  String get premiumFeature => 'Premium Feature';

  @override
  String get premiumUpgradeRequired =>
      'This feature requires upgrading to the Premium plan.';

  @override
  String get upgradeToPremium => 'Upgrade to Premium';

  @override
  String get deleteAllDataTitle => 'Delete All Data';

  @override
  String get deleteAllDataConfirmation =>
      'This operation cannot be undone. Are you sure you want to delete all data?';

  @override
  String get deleteAllDataSuccess => 'All data has been deleted';

  @override
  String get delete => 'Delete';

  @override
  String get timing_title => 'Timing';

  @override
  String get timing_after_waking => 'After waking';

  @override
  String timing_after_waking_with_hours(int hours) {
    return 'After waking · ${hours}h';
  }

  @override
  String get timing_after_waking_with_placeholder => 'After waking · --h';

  @override
  String get day_type_title => 'Day Type';

  @override
  String get day_type_suggested => 'Suggested day type';

  @override
  String get day_type_change_hint => 'You can change this anytime';

  @override
  String get day_type_night_shift => 'Night Shift';

  @override
  String get day_type_busy => 'Busy Day';

  @override
  String get day_type_eating_out => 'Eating Out';

  @override
  String get day_type_recovery => 'Recovery';

  @override
  String get day_type_regular => 'Regular';

  @override
  String get day_type_night_shift_description =>
      'For late or overnight schedules';

  @override
  String get day_type_busy_description => 'For busy or hectic days';

  @override
  String get day_type_eating_out_description => 'For days with meals out';

  @override
  String get day_type_recovery_description => 'For rest or recovery days';

  @override
  String get day_type_regular_description => 'For regular routine days';

  @override
  String get ai_empathy_night_shift => 'That\'s common on night shifts.';

  @override
  String get ai_acceptance_general => 'Today doesn\'t need to be perfect.';

  @override
  String get ai_next_step_light_meal =>
      'Let\'s just keep the next meal simple.';

  @override
  String get ai_next_step_anytime_ok => 'One light choice is enough.';

  @override
  String get ai_summary_no_pressure => 'This fits how today went.';

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
  String get home_error_state_message =>
      'Something didn\'t line up. It\'s okay to log first.';

  @override
  String get home_retry => 'Try again';

  @override
  String get home_empty_state_message =>
      'It\'s okay if there\'s no record yet. We can start from your current state.';

  @override
  String get home_premium_detail_hint =>
      '※ Detailed explanations are available in Coach Detail';

  @override
  String get logHomeSubtitle => 'Records stay as facts.';

  @override
  String get logHomeFoodTitle => 'Food Log';

  @override
  String get logHomeFoodDescription => 'View past meals in a list';

  @override
  String get logHomeWaterTitle => 'Water Log';

  @override
  String get logHomeWaterDescription => 'Check hydration records';

  @override
  String get logHomeWeightTitle => 'Weight Log';

  @override
  String get logHomeWeightDescription => 'Review weight records';

  @override
  String get logHomeRecentStateTitle => 'Recent activity';

  @override
  String get logHomeWeightRecorded => 'Weight recorded';

  @override
  String get logHomeEmptyStateMessage =>
      'There are no records to show yet.\nThat\'s okay.';

  @override
  String get foodDeleteConfirmTitle => 'Delete meal?';

  @override
  String get foodDeleteConfirmMessage => 'Do you want to delete this meal?';

  @override
  String get foodDeleteRecordConfirmMessage =>
      'Do you want to delete this record?';

  @override
  String get deleteFailedMessage => 'Couldn\'t delete the record.';

  @override
  String get foodDetailTitle => 'Food Detail';

  @override
  String get editFeatureComingSoon => 'Editing isn\'t ready yet.';

  @override
  String get foodDetailNotAvailableMessage =>
      'This record can\'t be shown right now. It\'s okay to go back to the list.';

  @override
  String get backToList => 'Back to list';

  @override
  String get deleteFailedFriendlyMessage =>
      'It didn\'t delete properly. You can try again.';

  @override
  String get nightCycleIntro1Title => 'Welcome to Night Cycle';

  @override
  String get nightCycleIntro1Description =>
      'This app is for people who work night shifts or have a night-oriented lifestyle.\n\nEating at night is normal. It\'s not a problem.\n\nIt\'s a tool to protect your lifestyle, not change it.';

  @override
  String get nightCycleIntro2Title => 'No ratings or goals';

  @override
  String get nightCycleIntro2Description =>
      'This app has no achievement rates, scores, or graphs.\n\nIt just tells you your current physical state and suggests one thing you can do next.\n\nIt\'s a tool you can use with confidence even when you\'re tired of making decisions.';

  @override
  String get wakeTimeSetupTitle => 'Set wake time';

  @override
  String get wakeTimeSetupDescription =>
      'This is the \"start of your day\".\n\nWe don\'t use social time (morning, afternoon, evening). Everything is calculated from this time.';

  @override
  String get wakeTimeSetupTapToChange => 'Tap to change';

  @override
  String get wakeTimeSettingsPlaceholder =>
      'Wake time settings will appear here.';

  @override
  String get language_selection_title => 'Select language';

  @override
  String get languageSelectionScreenTitle => 'Select language';

  @override
  String get languageSelectionContinue => 'Continue';

  @override
  String get homeChangeWakeTime => 'Change wake time';

  @override
  String get homeTestOpenAiApi => 'Test OpenAI API';

  @override
  String get homeOpenChat => 'Open Chat';

  @override
  String get homeScreenDebugTag => 'HOME_SCREEN';

  @override
  String get intro_phase1_title => 'About Night Cycle';

  @override
  String get intro_phase1_message1 =>
      'Night Cycle is built specifically for night-shift workers\nand people who live at night.';

  @override
  String get intro_phase1_message2 =>
      'This app does not support\na morning-centered lifestyle.';

  @override
  String get intro_phase1_message3 => 'Being awake at night is normal here.';

  @override
  String get intro_phase2_title => 'Night Cycle';

  @override
  String get intro_phase2_message1 =>
      'Everything is calculated from your wake time,\nnot the time on the clock.';

  @override
  String get intro_phase2_message2 => 'Eating at night is assumed, not judged.';

  @override
  String get intro_phase2_message3 =>
      'We suggest one next action\nthat fits your current rhythm.';

  @override
  String get wakeTimeSetupSelectTime => 'Select time';

  @override
  String wakeTimeSetupSelected(String time) {
    return 'Selected: $time';
  }

  @override
  String get wakeTimeSetupPleaseSelect => 'Please select a wake time';

  @override
  String get chatTitle => 'Chat';

  @override
  String get home_advice_title => 'For your cycle';

  @override
  String get home_status_summary =>
      'Your body is in its current phase. No action is overdue.';

  @override
  String get home_advice_hydration => 'Stay hydrated between meals.';

  @override
  String get home_advice_meal_timing =>
      'Eat when you feel hungry — your schedule is valid.';

  @override
  String get home_advice_light => 'Reduce bright light as you approach sleep.';

  @override
  String get home_next_action_label => 'Next';

  @override
  String get home_next_action_default => 'Drink a glass of water.';

  @override
  String get home_pro_title => 'Night Cycle Pro';

  @override
  String get home_pro_description => 'Deeper understanding of your rhythm.';
}
