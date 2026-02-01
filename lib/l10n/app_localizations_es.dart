// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get hello => 'Hola';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Cancelar';

  @override
  String get appTitle => 'FitAI';

  @override
  String get homeTitle => 'Inicio';

  @override
  String get logTitle => 'Registro';

  @override
  String get coachTitle => 'Entrenador';

  @override
  String get settingsTitle => 'Configuración';

  @override
  String get selectLanguage => 'Selecciona tu idioma';

  @override
  String get selectLanguageDescription =>
      'Elige el idioma que prefieres para la experiencia FitAi.';

  @override
  String get continueButton => 'Continuar';

  @override
  String get accountPrivacySection => 'Cuenta / Privacidad';

  @override
  String get changeGoal => 'Cambiar Objetivo';

  @override
  String get weightAlwaysVisible => 'Peso Siempre Visible';

  @override
  String get deleteAllData => 'Eliminar Todos los Datos';

  @override
  String get notificationsSection => 'Notificaciones';

  @override
  String get dailyReminder => 'Recordatorio Diario';

  @override
  String get waterReminder => 'Recordatorio de Agua';

  @override
  String get languageSection => 'Idioma';

  @override
  String get appLanguage => 'Idioma de la App';

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
  String get aiSettingsSection => 'Configuración de IA';

  @override
  String get coachingLevel => 'Nivel de Entrenamiento';

  @override
  String get basic => 'Básico';

  @override
  String get pro => 'Pro';

  @override
  String get proRequiresPremium => 'Plan Premium requerido';

  @override
  String get weeklyAiReport => 'Informe Semanal de IA';

  @override
  String get advancedFoodAnalysis => 'Análisis Avanzado de Alimentos';

  @override
  String get otherSection => 'Otros';

  @override
  String get terms => 'Términos';

  @override
  String get privacyPolicy => 'Política de Privacidad';

  @override
  String get appVersion => 'Versión de la App';

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
  String get coachingLevelDialogTitle => 'Nivel de Entrenamiento';

  @override
  String get premiumFeature => 'Función Premium';

  @override
  String get premiumUpgradeRequired =>
      'Esta función requiere actualizar al plan Premium.';

  @override
  String get upgradeToPremium => 'Actualizar a Premium';

  @override
  String get deleteAllDataTitle => 'Eliminar Todos los Datos';

  @override
  String get deleteAllDataConfirmation =>
      'Esta operación no se puede deshacer. ¿Está seguro de que desea eliminar todos los datos?';

  @override
  String get deleteAllDataSuccess => 'Todos los datos han sido eliminados';

  @override
  String get delete => 'Eliminar';

  @override
  String get timing_title => 'Momento';

  @override
  String get timing_after_waking => 'Después de despertar';

  @override
  String timing_after_waking_with_hours(int hours) {
    return 'Después de despertar · ${hours}h';
  }

  @override
  String get timing_after_waking_with_placeholder =>
      'Después de despertar · --h';

  @override
  String get day_type_title => 'Tipo de Día';

  @override
  String get day_type_suggested => 'Tipo de día sugerido';

  @override
  String get day_type_change_hint => 'Puedes cambiarlo en cualquier momento';

  @override
  String get day_type_night_shift => 'Turno Nocturno';

  @override
  String get day_type_busy => 'Día Ocupado';

  @override
  String get day_type_eating_out => 'Comer Fuera';

  @override
  String get day_type_recovery => 'Recuperación';

  @override
  String get day_type_regular => 'Regular';

  @override
  String get day_type_night_shift_description =>
      'Para horarios tardíos o nocturnos';

  @override
  String get day_type_busy_description => 'Para días ocupados o agitados';

  @override
  String get day_type_eating_out_description => 'Para días con comidas fuera';

  @override
  String get day_type_recovery_description =>
      'Para días de descanso o recuperación';

  @override
  String get day_type_regular_description => 'Para días de rutina regular';

  @override
  String get ai_empathy_night_shift => 'Eso es común en turnos nocturnos.';

  @override
  String get ai_acceptance_general => 'Hoy no necesita ser perfecto.';

  @override
  String get ai_next_step_light_meal => 'Mantengamos la próxima comida simple.';

  @override
  String get ai_next_step_anytime_ok => 'Una elección ligera es suficiente.';

  @override
  String get ai_summary_no_pressure => 'Esto encaja con cómo fue hoy.';

  @override
  String get home_current_state => 'Estado Actual';

  @override
  String get home_next_action => 'Siguiente Acción';

  @override
  String get home_quick_log_food => 'Comida';

  @override
  String get home_quick_log_water => 'Agua';

  @override
  String get home_quick_log_weight => 'Peso';

  @override
  String get home_error_state_message =>
      'Algo no cuadró. Está bien registrar primero.';

  @override
  String get home_retry => 'Intentar de nuevo';

  @override
  String get home_empty_state_message =>
      'Está bien si aún no hay registro. Podemos empezar desde tu estado actual.';

  @override
  String get home_premium_detail_hint =>
      '※ Las explicaciones detalladas están disponibles en Coach Detail';

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
  String get nightCycleIntro1Title => 'Bienvenido a Night Cycle';

  @override
  String get nightCycleIntro1Description =>
      'Esta aplicación es para personas que trabajan en turnos nocturnos o tienen un estilo de vida nocturno.\n\nComer de noche es normal. No es un problema.\n\nEs una herramienta para proteger tu estilo de vida, no cambiarlo.';

  @override
  String get nightCycleIntro2Title => 'Sin calificaciones ni objetivos';

  @override
  String get nightCycleIntro2Description =>
      'Esta aplicación no tiene tasas de logro, puntuaciones ni gráficos.\n\nSolo te dice tu estado físico actual y sugiere una cosa que puedes hacer a continuación.\n\nEs una herramienta que puedes usar con confianza incluso cuando estás cansado de tomar decisiones.';

  @override
  String get wakeTimeSetupTitle => 'Configurar hora de despertar';

  @override
  String get wakeTimeSetupDescription =>
      'Este es el \"inicio de tu día\".\n\nNo usamos tiempo social (mañana, tarde, noche). Todo se calcula desde este momento.';

  @override
  String get wakeTimeSetupTapToChange => 'Toca para cambiar';

  @override
  String get wakeTimeSettingsPlaceholder =>
      'Wake time settings will appear here.';

  @override
  String get language_selection_title => 'Seleccionar idioma';

  @override
  String get languageSelectionScreenTitle => 'Seleccionar idioma';

  @override
  String get languageSelectionContinue => 'Continuar';

  @override
  String get homeChangeWakeTime => 'Cambiar hora de despertar';

  @override
  String get homeTestOpenAiApi => 'Probar API de OpenAI';

  @override
  String get homeOpenChat => 'Abrir chat';

  @override
  String get homeScreenDebugTag => 'HOME_SCREEN';

  @override
  String get intro_phase1_title => 'Acerca de Night Cycle';

  @override
  String get intro_phase1_message1 =>
      'Night Cycle está construido específicamente para trabajadores nocturnos\ny personas que viven de noche.';

  @override
  String get intro_phase1_message2 =>
      'Esta aplicación no admite\nun estilo de vida centrado en la mañana.';

  @override
  String get intro_phase1_message3 =>
      'Estar despierto por la noche es normal aquí.';

  @override
  String get intro_phase2_title => 'Night Cycle';

  @override
  String get intro_phase2_message1 =>
      'Todo se calcula desde tu hora de despertar,\nno la hora del reloj.';

  @override
  String get intro_phase2_message2 => 'Comer de noche se asume, no se juzga.';

  @override
  String get intro_phase2_message3 =>
      'Sugerimos una siguiente acción\nque se ajuste a tu ritmo actual.';

  @override
  String get wakeTimeSetupSelectTime => 'Seleccionar hora';

  @override
  String wakeTimeSetupSelected(String time) {
    return 'Seleccionado: $time';
  }

  @override
  String get wakeTimeSetupPleaseSelect =>
      'Por favor selecciona una hora de despertar';

  @override
  String get chatTitle => 'Chat';

  @override
  String get home_advice_title => 'Para tu ciclo';

  @override
  String get home_status_summary =>
      'Tu cuerpo está en su fase actual. No hay nada pendiente.';

  @override
  String get home_advice_hydration => 'Mantente hidratado entre comidas.';

  @override
  String get home_advice_meal_timing =>
      'Come cuando tengas hambre — tu horario es válido.';

  @override
  String get home_advice_light =>
      'Reduce la luz intensa cuando te acerques a dormir.';

  @override
  String get home_next_action_label => 'Siguiente';

  @override
  String get home_next_action_default => 'Bebe un vaso de agua.';

  @override
  String get home_pro_title => 'Night Cycle Pro';

  @override
  String get home_pro_description => 'Comprensión más profunda de tu ritmo.';
}
