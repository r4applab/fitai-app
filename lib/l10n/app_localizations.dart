import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_id.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_pt.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es'),
    Locale('hi'),
    Locale('id'),
    Locale('ja'),
    Locale('pt'),
    Locale('pt', 'BR'),
  ];

  /// No description provided for @hello.
  ///
  /// In en, this message translates to:
  /// **'Hello'**
  String get hello;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Night Cycle'**
  String get appTitle;

  /// No description provided for @homeTitle.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get homeTitle;

  /// No description provided for @logTitle.
  ///
  /// In en, this message translates to:
  /// **'Log'**
  String get logTitle;

  /// No description provided for @coachTitle.
  ///
  /// In en, this message translates to:
  /// **'Coach'**
  String get coachTitle;

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// No description provided for @selectLanguage.
  ///
  /// In en, this message translates to:
  /// **'Select your language'**
  String get selectLanguage;

  /// No description provided for @selectLanguageDescription.
  ///
  /// In en, this message translates to:
  /// **'Choose the language you prefer for the FitAi experience.'**
  String get selectLanguageDescription;

  /// No description provided for @continueButton.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueButton;

  /// No description provided for @accountPrivacySection.
  ///
  /// In en, this message translates to:
  /// **'Account / Privacy'**
  String get accountPrivacySection;

  /// No description provided for @changeGoal.
  ///
  /// In en, this message translates to:
  /// **'Change Goal'**
  String get changeGoal;

  /// No description provided for @weightAlwaysVisible.
  ///
  /// In en, this message translates to:
  /// **'Weight Always Visible'**
  String get weightAlwaysVisible;

  /// No description provided for @deleteAllData.
  ///
  /// In en, this message translates to:
  /// **'Delete All Data'**
  String get deleteAllData;

  /// No description provided for @notificationsSection.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notificationsSection;

  /// No description provided for @dailyReminder.
  ///
  /// In en, this message translates to:
  /// **'Daily Reminder'**
  String get dailyReminder;

  /// No description provided for @waterReminder.
  ///
  /// In en, this message translates to:
  /// **'Water Reminder'**
  String get waterReminder;

  /// No description provided for @languageSection.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get languageSection;

  /// No description provided for @appLanguage.
  ///
  /// In en, this message translates to:
  /// **'App Language'**
  String get appLanguage;

  /// No description provided for @languageSettingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get languageSettingsTitle;

  /// No description provided for @languageSettingsDescription.
  ///
  /// In en, this message translates to:
  /// **'Choose the language that feels easiest for you.'**
  String get languageSettingsDescription;

  /// No description provided for @languageSettingsUpdateFailed.
  ///
  /// In en, this message translates to:
  /// **'Something didn\'t update properly.\nYou can try selecting the language again.'**
  String get languageSettingsUpdateFailed;

  /// No description provided for @languageLabelEnglish.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get languageLabelEnglish;

  /// No description provided for @languageLabelJapanese.
  ///
  /// In en, this message translates to:
  /// **'日本語'**
  String get languageLabelJapanese;

  /// No description provided for @languageLabelSpanish.
  ///
  /// In en, this message translates to:
  /// **'Español'**
  String get languageLabelSpanish;

  /// No description provided for @languageLabelPortugueseBrazil.
  ///
  /// In en, this message translates to:
  /// **'Português (Brasil)'**
  String get languageLabelPortugueseBrazil;

  /// No description provided for @languageLabelHindi.
  ///
  /// In en, this message translates to:
  /// **'हिन्दी'**
  String get languageLabelHindi;

  /// No description provided for @languageLabelIndonesian.
  ///
  /// In en, this message translates to:
  /// **'Bahasa Indonesia'**
  String get languageLabelIndonesian;

  /// No description provided for @aiSettingsSection.
  ///
  /// In en, this message translates to:
  /// **'AI Settings'**
  String get aiSettingsSection;

  /// No description provided for @coachingLevel.
  ///
  /// In en, this message translates to:
  /// **'Coaching Level'**
  String get coachingLevel;

  /// No description provided for @basic.
  ///
  /// In en, this message translates to:
  /// **'Basic'**
  String get basic;

  /// No description provided for @pro.
  ///
  /// In en, this message translates to:
  /// **'Pro'**
  String get pro;

  /// No description provided for @proRequiresPremium.
  ///
  /// In en, this message translates to:
  /// **'Premium plan required'**
  String get proRequiresPremium;

  /// No description provided for @weeklyAiReport.
  ///
  /// In en, this message translates to:
  /// **'Weekly AI Report'**
  String get weeklyAiReport;

  /// No description provided for @advancedFoodAnalysis.
  ///
  /// In en, this message translates to:
  /// **'Advanced Food Analysis'**
  String get advancedFoodAnalysis;

  /// No description provided for @otherSection.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get otherSection;

  /// No description provided for @terms.
  ///
  /// In en, this message translates to:
  /// **'Terms'**
  String get terms;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @appVersion.
  ///
  /// In en, this message translates to:
  /// **'App Version'**
  String get appVersion;

  /// No description provided for @settingsProfile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get settingsProfile;

  /// No description provided for @settingsWakeTime.
  ///
  /// In en, this message translates to:
  /// **'Wake Time'**
  String get settingsWakeTime;

  /// No description provided for @settingsWakeTimeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Wake time'**
  String get settingsWakeTimeSubtitle;

  /// No description provided for @settingsWeightDisplay.
  ///
  /// In en, this message translates to:
  /// **'Weight Display'**
  String get settingsWeightDisplay;

  /// No description provided for @settingsLanguage.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settingsLanguage;

  /// No description provided for @settingsNotifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get settingsNotifications;

  /// No description provided for @settingsLegal.
  ///
  /// In en, this message translates to:
  /// **'Legal'**
  String get settingsLegal;

  /// No description provided for @settingsDeleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get settingsDeleteAccount;

  /// No description provided for @settingsWeightDisplayShown.
  ///
  /// In en, this message translates to:
  /// **'Shown'**
  String get settingsWeightDisplayShown;

  /// No description provided for @settingsWeightDisplayHidden.
  ///
  /// In en, this message translates to:
  /// **'Hidden'**
  String get settingsWeightDisplayHidden;

  /// No description provided for @profileWakeTimeDescription.
  ///
  /// In en, this message translates to:
  /// **'This is the start of your day.'**
  String get profileWakeTimeDescription;

  /// No description provided for @notificationsTitle.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notificationsTitle;

  /// No description provided for @notificationsDescription.
  ///
  /// In en, this message translates to:
  /// **'Only gentle reminders that respect your night routine.'**
  String get notificationsDescription;

  /// No description provided for @notificationsHealthCheckTitle.
  ///
  /// In en, this message translates to:
  /// **'Health Check Reminder'**
  String get notificationsHealthCheckTitle;

  /// No description provided for @notificationsHealthCheckSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Gentle reminders for your well-being'**
  String get notificationsHealthCheckSubtitle;

  /// No description provided for @notificationsLongAwakeTitle.
  ///
  /// In en, this message translates to:
  /// **'Long Awake Reminder'**
  String get notificationsLongAwakeTitle;

  /// No description provided for @notificationsLongAwakeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'When you\'ve been awake for a long time'**
  String get notificationsLongAwakeSubtitle;

  /// No description provided for @notificationsHydrationTitle.
  ///
  /// In en, this message translates to:
  /// **'Hydration Nudge'**
  String get notificationsHydrationTitle;

  /// No description provided for @notificationsHydrationSubtitle.
  ///
  /// In en, this message translates to:
  /// **'When you might need more water'**
  String get notificationsHydrationSubtitle;

  /// No description provided for @notificationsUpdateFailed.
  ///
  /// In en, this message translates to:
  /// **'Notification settings couldn\'t be updated right now.\nYou can try again later.'**
  String get notificationsUpdateFailed;

  /// No description provided for @legalPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Legal information will appear here.'**
  String get legalPlaceholder;

  /// No description provided for @deleteAccountPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'You can delete your account from here.'**
  String get deleteAccountPlaceholder;

  /// No description provided for @coachingLevelDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Coaching Level'**
  String get coachingLevelDialogTitle;

  /// No description provided for @premiumFeature.
  ///
  /// In en, this message translates to:
  /// **'Premium Feature'**
  String get premiumFeature;

  /// No description provided for @premiumUpgradeRequired.
  ///
  /// In en, this message translates to:
  /// **'This feature requires upgrading to the Premium plan.'**
  String get premiumUpgradeRequired;

  /// No description provided for @upgradeToPremium.
  ///
  /// In en, this message translates to:
  /// **'Upgrade to Premium'**
  String get upgradeToPremium;

  /// No description provided for @deleteAllDataTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete All Data'**
  String get deleteAllDataTitle;

  /// No description provided for @deleteAllDataConfirmation.
  ///
  /// In en, this message translates to:
  /// **'This operation cannot be undone. Are you sure you want to delete all data?'**
  String get deleteAllDataConfirmation;

  /// No description provided for @deleteAllDataSuccess.
  ///
  /// In en, this message translates to:
  /// **'All data has been deleted'**
  String get deleteAllDataSuccess;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @timing_title.
  ///
  /// In en, this message translates to:
  /// **'Timing'**
  String get timing_title;

  /// No description provided for @timing_after_waking.
  ///
  /// In en, this message translates to:
  /// **'After waking'**
  String get timing_after_waking;

  /// No description provided for @timing_after_waking_with_hours.
  ///
  /// In en, this message translates to:
  /// **'After waking · {hours}h'**
  String timing_after_waking_with_hours(int hours);

  /// No description provided for @timing_after_waking_with_placeholder.
  ///
  /// In en, this message translates to:
  /// **'After waking · --h'**
  String get timing_after_waking_with_placeholder;

  /// No description provided for @day_type_title.
  ///
  /// In en, this message translates to:
  /// **'Day Type'**
  String get day_type_title;

  /// No description provided for @day_type_suggested.
  ///
  /// In en, this message translates to:
  /// **'Suggested day type'**
  String get day_type_suggested;

  /// No description provided for @day_type_change_hint.
  ///
  /// In en, this message translates to:
  /// **'You can change this anytime'**
  String get day_type_change_hint;

  /// No description provided for @day_type_night_shift.
  ///
  /// In en, this message translates to:
  /// **'Night Shift'**
  String get day_type_night_shift;

  /// No description provided for @day_type_busy.
  ///
  /// In en, this message translates to:
  /// **'Busy Day'**
  String get day_type_busy;

  /// No description provided for @day_type_eating_out.
  ///
  /// In en, this message translates to:
  /// **'Eating Out'**
  String get day_type_eating_out;

  /// No description provided for @day_type_recovery.
  ///
  /// In en, this message translates to:
  /// **'Recovery'**
  String get day_type_recovery;

  /// No description provided for @day_type_regular.
  ///
  /// In en, this message translates to:
  /// **'Regular'**
  String get day_type_regular;

  /// No description provided for @day_type_night_shift_description.
  ///
  /// In en, this message translates to:
  /// **'For late or overnight schedules'**
  String get day_type_night_shift_description;

  /// No description provided for @day_type_busy_description.
  ///
  /// In en, this message translates to:
  /// **'For busy or hectic days'**
  String get day_type_busy_description;

  /// No description provided for @day_type_eating_out_description.
  ///
  /// In en, this message translates to:
  /// **'For days with meals out'**
  String get day_type_eating_out_description;

  /// No description provided for @day_type_recovery_description.
  ///
  /// In en, this message translates to:
  /// **'For rest or recovery days'**
  String get day_type_recovery_description;

  /// No description provided for @day_type_regular_description.
  ///
  /// In en, this message translates to:
  /// **'For regular routine days'**
  String get day_type_regular_description;

  /// No description provided for @ai_empathy_night_shift.
  ///
  /// In en, this message translates to:
  /// **'That\'s common on night shifts.'**
  String get ai_empathy_night_shift;

  /// No description provided for @ai_acceptance_general.
  ///
  /// In en, this message translates to:
  /// **'Today doesn\'t need to be perfect.'**
  String get ai_acceptance_general;

  /// No description provided for @ai_next_step_light_meal.
  ///
  /// In en, this message translates to:
  /// **'Let\'s just keep the next meal simple.'**
  String get ai_next_step_light_meal;

  /// No description provided for @ai_next_step_anytime_ok.
  ///
  /// In en, this message translates to:
  /// **'One light choice is enough.'**
  String get ai_next_step_anytime_ok;

  /// No description provided for @ai_summary_no_pressure.
  ///
  /// In en, this message translates to:
  /// **'This fits how today went.'**
  String get ai_summary_no_pressure;

  /// No description provided for @home_current_state.
  ///
  /// In en, this message translates to:
  /// **'Current State'**
  String get home_current_state;

  /// No description provided for @home_next_action.
  ///
  /// In en, this message translates to:
  /// **'Next Action'**
  String get home_next_action;

  /// No description provided for @home_quick_log_food.
  ///
  /// In en, this message translates to:
  /// **'Food'**
  String get home_quick_log_food;

  /// No description provided for @home_quick_log_water.
  ///
  /// In en, this message translates to:
  /// **'Water'**
  String get home_quick_log_water;

  /// No description provided for @home_quick_log_weight.
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get home_quick_log_weight;

  /// No description provided for @home_error_state_message.
  ///
  /// In en, this message translates to:
  /// **'Something didn\'t line up. It\'s okay to log first.'**
  String get home_error_state_message;

  /// No description provided for @home_retry.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get home_retry;

  /// No description provided for @home_empty_state_message.
  ///
  /// In en, this message translates to:
  /// **'It\'s okay if there\'s no record yet. We can start from your current state.'**
  String get home_empty_state_message;

  /// No description provided for @home_premium_detail_hint.
  ///
  /// In en, this message translates to:
  /// **'※ Detailed explanations are available in Coach Detail'**
  String get home_premium_detail_hint;

  /// No description provided for @logHomeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Records stay as facts.'**
  String get logHomeSubtitle;

  /// No description provided for @logHomeFoodTitle.
  ///
  /// In en, this message translates to:
  /// **'Food Log'**
  String get logHomeFoodTitle;

  /// No description provided for @logHomeFoodDescription.
  ///
  /// In en, this message translates to:
  /// **'View past meals in a list'**
  String get logHomeFoodDescription;

  /// No description provided for @logHomeWaterTitle.
  ///
  /// In en, this message translates to:
  /// **'Water Log'**
  String get logHomeWaterTitle;

  /// No description provided for @logHomeWaterDescription.
  ///
  /// In en, this message translates to:
  /// **'Check hydration records'**
  String get logHomeWaterDescription;

  /// No description provided for @logHomeWeightTitle.
  ///
  /// In en, this message translates to:
  /// **'Weight Log'**
  String get logHomeWeightTitle;

  /// No description provided for @logHomeWeightDescription.
  ///
  /// In en, this message translates to:
  /// **'Review weight records'**
  String get logHomeWeightDescription;

  /// No description provided for @logHomeRecentStateTitle.
  ///
  /// In en, this message translates to:
  /// **'Recent activity'**
  String get logHomeRecentStateTitle;

  /// No description provided for @logHomeWeightRecorded.
  ///
  /// In en, this message translates to:
  /// **'Weight recorded'**
  String get logHomeWeightRecorded;

  /// No description provided for @logHomeEmptyStateMessage.
  ///
  /// In en, this message translates to:
  /// **'There are no records to show yet.\nThat\'s okay.'**
  String get logHomeEmptyStateMessage;

  /// No description provided for @foodDeleteConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete meal?'**
  String get foodDeleteConfirmTitle;

  /// No description provided for @foodDeleteConfirmMessage.
  ///
  /// In en, this message translates to:
  /// **'Do you want to delete this meal?'**
  String get foodDeleteConfirmMessage;

  /// No description provided for @foodDeleteRecordConfirmMessage.
  ///
  /// In en, this message translates to:
  /// **'Do you want to delete this record?'**
  String get foodDeleteRecordConfirmMessage;

  /// No description provided for @deleteFailedMessage.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t delete the record.'**
  String get deleteFailedMessage;

  /// No description provided for @foodDetailTitle.
  ///
  /// In en, this message translates to:
  /// **'Food Detail'**
  String get foodDetailTitle;

  /// No description provided for @editFeatureComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Editing isn\'t ready yet.'**
  String get editFeatureComingSoon;

  /// No description provided for @foodDetailNotAvailableMessage.
  ///
  /// In en, this message translates to:
  /// **'This record can\'t be shown right now. It\'s okay to go back to the list.'**
  String get foodDetailNotAvailableMessage;

  /// No description provided for @backToList.
  ///
  /// In en, this message translates to:
  /// **'Back to list'**
  String get backToList;

  /// No description provided for @deleteFailedFriendlyMessage.
  ///
  /// In en, this message translates to:
  /// **'It didn\'t delete properly. You can try again.'**
  String get deleteFailedFriendlyMessage;

  /// No description provided for @nightCycleIntro1Title.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Night Cycle'**
  String get nightCycleIntro1Title;

  /// No description provided for @nightCycleIntro1Description.
  ///
  /// In en, this message translates to:
  /// **'This app is for people who work night shifts or have a night-oriented lifestyle.\n\nEating at night is normal. It\'s not a problem.\n\nIt\'s a tool to protect your lifestyle, not change it.'**
  String get nightCycleIntro1Description;

  /// No description provided for @nightCycleIntro2Title.
  ///
  /// In en, this message translates to:
  /// **'No ratings or goals'**
  String get nightCycleIntro2Title;

  /// No description provided for @nightCycleIntro2Description.
  ///
  /// In en, this message translates to:
  /// **'This app has no achievement rates, scores, or graphs.\n\nIt just tells you your current physical state and suggests one thing you can do next.\n\nIt\'s a tool you can use with confidence even when you\'re tired of making decisions.'**
  String get nightCycleIntro2Description;

  /// No description provided for @wakeTimeSetupTitle.
  ///
  /// In en, this message translates to:
  /// **'Set wake time'**
  String get wakeTimeSetupTitle;

  /// No description provided for @wakeTimeSetupDescription.
  ///
  /// In en, this message translates to:
  /// **'This is the \"start of your day\".\n\nWe don\'t use social time (morning, afternoon, evening). Everything is calculated from this time.'**
  String get wakeTimeSetupDescription;

  /// No description provided for @wakeTimeSetupTapToChange.
  ///
  /// In en, this message translates to:
  /// **'Tap to change'**
  String get wakeTimeSetupTapToChange;

  /// No description provided for @wakeTimeSettingsPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Wake time settings will appear here.'**
  String get wakeTimeSettingsPlaceholder;

  /// No description provided for @language_selection_title.
  ///
  /// In en, this message translates to:
  /// **'Select language'**
  String get language_selection_title;

  /// No description provided for @languageSelectionScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Select language'**
  String get languageSelectionScreenTitle;

  /// No description provided for @languageSelectionContinue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get languageSelectionContinue;

  /// No description provided for @homeChangeWakeTime.
  ///
  /// In en, this message translates to:
  /// **'Change wake time'**
  String get homeChangeWakeTime;

  /// No description provided for @homeTestOpenAiApi.
  ///
  /// In en, this message translates to:
  /// **'Test OpenAI API'**
  String get homeTestOpenAiApi;

  /// No description provided for @homeOpenChat.
  ///
  /// In en, this message translates to:
  /// **'Open Chat'**
  String get homeOpenChat;

  /// No description provided for @homeScreenDebugTag.
  ///
  /// In en, this message translates to:
  /// **'HOME_SCREEN'**
  String get homeScreenDebugTag;

  /// No description provided for @intro_phase1_title.
  ///
  /// In en, this message translates to:
  /// **'About Night Cycle'**
  String get intro_phase1_title;

  /// No description provided for @intro_phase1_message1.
  ///
  /// In en, this message translates to:
  /// **'Night Cycle is built specifically for night-shift workers\nand people who live at night.'**
  String get intro_phase1_message1;

  /// No description provided for @intro_phase1_message2.
  ///
  /// In en, this message translates to:
  /// **'This app does not support\na morning-centered lifestyle.'**
  String get intro_phase1_message2;

  /// No description provided for @intro_phase1_message3.
  ///
  /// In en, this message translates to:
  /// **'Being awake at night is normal here.'**
  String get intro_phase1_message3;

  /// No description provided for @intro_phase2_title.
  ///
  /// In en, this message translates to:
  /// **'Night Cycle'**
  String get intro_phase2_title;

  /// No description provided for @intro_phase2_message1.
  ///
  /// In en, this message translates to:
  /// **'Everything is calculated from your wake time,\nnot the time on the clock.'**
  String get intro_phase2_message1;

  /// No description provided for @intro_phase2_message2.
  ///
  /// In en, this message translates to:
  /// **'Eating at night is assumed, not judged.'**
  String get intro_phase2_message2;

  /// No description provided for @intro_phase2_message3.
  ///
  /// In en, this message translates to:
  /// **'We suggest one next action\nthat fits your current rhythm.'**
  String get intro_phase2_message3;

  /// No description provided for @wakeTimeSetupSelectTime.
  ///
  /// In en, this message translates to:
  /// **'Select time'**
  String get wakeTimeSetupSelectTime;

  /// No description provided for @wakeTimeSetupSelected.
  ///
  /// In en, this message translates to:
  /// **'Selected: {time}'**
  String wakeTimeSetupSelected(String time);

  /// No description provided for @wakeTimeSetupPleaseSelect.
  ///
  /// In en, this message translates to:
  /// **'Please select a wake time'**
  String get wakeTimeSetupPleaseSelect;

  /// No description provided for @chatTitle.
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get chatTitle;

  /// No description provided for @home_advice_title.
  ///
  /// In en, this message translates to:
  /// **'For your cycle'**
  String get home_advice_title;

  /// No description provided for @home_status_summary.
  ///
  /// In en, this message translates to:
  /// **'Your body is in its current phase. No action is overdue.'**
  String get home_status_summary;

  /// No description provided for @home_advice_hydration.
  ///
  /// In en, this message translates to:
  /// **'Stay hydrated between meals.'**
  String get home_advice_hydration;

  /// No description provided for @home_advice_meal_timing.
  ///
  /// In en, this message translates to:
  /// **'Eat when you feel hungry — your schedule is valid.'**
  String get home_advice_meal_timing;

  /// No description provided for @home_advice_light.
  ///
  /// In en, this message translates to:
  /// **'Reduce bright light as you approach sleep.'**
  String get home_advice_light;

  /// No description provided for @home_next_action_label.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get home_next_action_label;

  /// No description provided for @home_next_action_default.
  ///
  /// In en, this message translates to:
  /// **'Drink a glass of water.'**
  String get home_next_action_default;

  /// No description provided for @home_pro_title.
  ///
  /// In en, this message translates to:
  /// **'Night Cycle Pro'**
  String get home_pro_title;

  /// No description provided for @home_pro_description.
  ///
  /// In en, this message translates to:
  /// **'Deeper understanding of your rhythm.'**
  String get home_pro_description;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'en',
    'es',
    'hi',
    'id',
    'ja',
    'pt',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'pt':
      {
        switch (locale.countryCode) {
          case 'BR':
            return AppLocalizationsPtBr();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'hi':
      return AppLocalizationsHi();
    case 'id':
      return AppLocalizationsId();
    case 'ja':
      return AppLocalizationsJa();
    case 'pt':
      return AppLocalizationsPt();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
