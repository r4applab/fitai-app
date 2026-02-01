// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get hello => 'Olá';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Cancelar';

  @override
  String get appTitle => 'FitAI';

  @override
  String get homeTitle => 'Início';

  @override
  String get logTitle => 'Registro';

  @override
  String get coachTitle => 'Treinador';

  @override
  String get settingsTitle => 'Configurações';

  @override
  String get selectLanguage => 'Selecione seu idioma';

  @override
  String get selectLanguageDescription =>
      'Escolha o idioma que você prefere para a experiência FitAi.';

  @override
  String get continueButton => 'Continuar';

  @override
  String get accountPrivacySection => 'Conta / Privacidade';

  @override
  String get changeGoal => 'Alterar Meta';

  @override
  String get weightAlwaysVisible => 'Peso Sempre Visível';

  @override
  String get deleteAllData => 'Excluir Todos os Dados';

  @override
  String get notificationsSection => 'Notificações';

  @override
  String get dailyReminder => 'Lembrete Diário';

  @override
  String get waterReminder => 'Lembrete de Água';

  @override
  String get languageSection => 'Idioma';

  @override
  String get appLanguage => 'Idioma do App';

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
  String get aiSettingsSection => 'Configurações de IA';

  @override
  String get coachingLevel => 'Nível de Coaching';

  @override
  String get basic => 'Básico';

  @override
  String get pro => 'Pro';

  @override
  String get proRequiresPremium => 'Plano Premium necessário';

  @override
  String get weeklyAiReport => 'Relatório Semanal de IA';

  @override
  String get advancedFoodAnalysis => 'Análise Avançada de Alimentos';

  @override
  String get otherSection => 'Outros';

  @override
  String get terms => 'Termos';

  @override
  String get privacyPolicy => 'Política de Privacidade';

  @override
  String get appVersion => 'Versão do App';

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
  String get coachingLevelDialogTitle => 'Nível de Coaching';

  @override
  String get premiumFeature => 'Recurso Premium';

  @override
  String get premiumUpgradeRequired =>
      'Este recurso requer upgrade para o plano Premium.';

  @override
  String get upgradeToPremium => 'Fazer Upgrade para Premium';

  @override
  String get deleteAllDataTitle => 'Excluir Todos os Dados';

  @override
  String get deleteAllDataConfirmation =>
      'Esta operação não pode ser desfeita. Tem certeza de que deseja excluir todos os dados?';

  @override
  String get deleteAllDataSuccess => 'Todos os dados foram excluídos';

  @override
  String get delete => 'Excluir';

  @override
  String get timing_title => 'Momento';

  @override
  String get timing_after_waking => 'Após acordar';

  @override
  String timing_after_waking_with_hours(int hours) {
    return 'Após acordar • ${hours}h';
  }

  @override
  String get timing_after_waking_with_placeholder => 'Após acordar • --h';

  @override
  String get day_type_title => 'Tipo de Dia';

  @override
  String get day_type_suggested => 'Tipo de dia sugerido';

  @override
  String get day_type_change_hint => 'Você pode mudar isso a qualquer momento';

  @override
  String get day_type_night_shift => 'Turno Noturno';

  @override
  String get day_type_busy => 'Dia Ocupado';

  @override
  String get day_type_eating_out => 'Comer Fora';

  @override
  String get day_type_recovery => 'Recuperação';

  @override
  String get day_type_regular => 'Regular';

  @override
  String get day_type_night_shift_description =>
      'Para horários tardios ou noturnos';

  @override
  String get day_type_busy_description => 'Para dias ocupados ou agitados';

  @override
  String get day_type_eating_out_description => 'Para dias com refeições fora';

  @override
  String get day_type_recovery_description =>
      'Para dias de descanso ou recuperação';

  @override
  String get day_type_regular_description => 'Para dias de rotina regular';

  @override
  String get ai_empathy_night_shift => 'Isso é comum em turnos noturnos.';

  @override
  String get ai_acceptance_general => 'Hoje não precisa ser perfeito.';

  @override
  String get ai_next_step_light_meal =>
      'Vamos manter a próxima refeição simples.';

  @override
  String get ai_next_step_anytime_ok => 'Uma escolha leve é suficiente.';

  @override
  String get ai_summary_no_pressure => 'Isso se encaixa em como foi hoje.';

  @override
  String get home_current_state => 'Estado Atual';

  @override
  String get home_next_action => 'Próxima Ação';

  @override
  String get home_quick_log_food => 'Comida';

  @override
  String get home_quick_log_water => 'Água';

  @override
  String get home_quick_log_weight => 'Peso';

  @override
  String get home_error_state_message =>
      'Algo não se alinhou. Está tudo bem registrar primeiro.';

  @override
  String get home_retry => 'Tentar novamente';

  @override
  String get home_empty_state_message =>
      'Está tudo bem se ainda não houver registro. Podemos começar do seu estado atual.';

  @override
  String get home_premium_detail_hint =>
      '※ Explicações detalhadas estão disponíveis em Coach Detail';

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
  String get nightCycleIntro1Title => 'Bem-vindo ao Night Cycle';

  @override
  String get nightCycleIntro1Description =>
      'Este aplicativo é para pessoas que trabalham em turnos noturnos.\n\nComer à noite é normal. Não é um problema.\n\nVamos encontrar uma forma de continuar que se ajuste ao seu estilo de vida sem forçar.';

  @override
  String get nightCycleIntro2Title => 'Sem avaliações ou objetivos';

  @override
  String get nightCycleIntro2Description =>
      'Este aplicativo não tem taxas de conquista, pontuações ou gráficos.\n\nEle apenas informa seu estado físico atual e sugere uma coisa que você pode fazer a seguir.\n\nÉ uma ferramenta que você pode usar com confiança mesmo quando está cansado de tomar decisões.';

  @override
  String get wakeTimeSetupTitle => 'Definir hora de despertar';

  @override
  String get wakeTimeSetupDescription =>
      'Este é o \"início do seu dia\".\n\nUsaremos esta hora como referência para entender seu estado físico.';

  @override
  String get wakeTimeSetupTapToChange => 'Toque para alterar';

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
  String get homeChangeWakeTime => 'Alterar hora de despertar';

  @override
  String get homeTestOpenAiApi => 'Testar API do OpenAI';

  @override
  String get homeOpenChat => 'Abrir chat';

  @override
  String get homeScreenDebugTag => 'HOME_SCREEN';

  @override
  String get intro_phase1_title => 'Sobre o Night Cycle';

  @override
  String get intro_phase1_message1 =>
      'Night Cycle é construído especificamente para trabalhadores noturnos\ne pessoas que vivem à noite.';

  @override
  String get intro_phase1_message2 =>
      'Este aplicativo não suporta\num estilo de vida centrado na manhã.';

  @override
  String get intro_phase1_message3 => 'Estar acordado à noite é normal aqui.';

  @override
  String get intro_phase2_title => 'Night Cycle';

  @override
  String get intro_phase2_message1 =>
      'Tudo é calculado a partir da sua hora de despertar,\nnão a hora do relógio.';

  @override
  String get intro_phase2_message2 => 'Comer à noite é assumido, não julgado.';

  @override
  String get intro_phase2_message3 =>
      'Sugerimos uma próxima ação\nque se ajusta ao seu ritmo atual.';

  @override
  String get wakeTimeSetupSelectTime => 'Selecionar hora';

  @override
  String wakeTimeSetupSelected(String time) {
    return 'Selecionado: $time';
  }

  @override
  String get wakeTimeSetupPleaseSelect =>
      'Por favor, selecione uma hora de despertar';

  @override
  String get chatTitle => 'Chat';

  @override
  String get home_advice_title => 'Para o seu ciclo';

  @override
  String get home_status_summary =>
      'Seu corpo está na fase atual. Nada está atrasado.';

  @override
  String get home_advice_hydration =>
      'Mantenha-se hidratado entre as refeições.';

  @override
  String get home_advice_meal_timing =>
      'Coma quando sentir fome — seu horário é válido.';

  @override
  String get home_advice_light =>
      'Reduza a luz intensa ao se aproximar do sono.';

  @override
  String get home_next_action_label => 'Próximo';

  @override
  String get home_next_action_default => 'Beba um copo de água.';

  @override
  String get home_pro_title => 'Night Cycle Pro';

  @override
  String get home_pro_description => 'Compreensão mais profunda do seu ritmo.';
}

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class AppLocalizationsPtBr extends AppLocalizationsPt {
  AppLocalizationsPtBr() : super('pt_BR');

  @override
  String get hello => 'Olá';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Cancelar';

  @override
  String get appTitle => 'FitAI';

  @override
  String get homeTitle => 'Início';

  @override
  String get logTitle => 'Registro';

  @override
  String get coachTitle => 'Treinador';

  @override
  String get settingsTitle => 'Configurações';

  @override
  String get selectLanguage => 'Selecione seu idioma';

  @override
  String get selectLanguageDescription =>
      'Escolha o idioma que você prefere para a experiência FitAi.';

  @override
  String get continueButton => 'Continuar';

  @override
  String get accountPrivacySection => 'Conta / Privacidade';

  @override
  String get changeGoal => 'Alterar Meta';

  @override
  String get weightAlwaysVisible => 'Peso Sempre Visível';

  @override
  String get deleteAllData => 'Excluir Todos os Dados';

  @override
  String get notificationsSection => 'Notificações';

  @override
  String get dailyReminder => 'Lembrete Diário';

  @override
  String get waterReminder => 'Lembrete de Água';

  @override
  String get languageSection => 'Idioma';

  @override
  String get appLanguage => 'Idioma do App';

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
  String get aiSettingsSection => 'Configurações de IA';

  @override
  String get coachingLevel => 'Nível de Coaching';

  @override
  String get basic => 'Básico';

  @override
  String get pro => 'Pro';

  @override
  String get proRequiresPremium => 'Plano Premium necessário';

  @override
  String get weeklyAiReport => 'Relatório Semanal de IA';

  @override
  String get advancedFoodAnalysis => 'Análise Avançada de Alimentos';

  @override
  String get otherSection => 'Outros';

  @override
  String get terms => 'Termos';

  @override
  String get privacyPolicy => 'Política de Privacidade';

  @override
  String get appVersion => 'Versão do App';

  @override
  String get coachingLevelDialogTitle => 'Nível de Coaching';

  @override
  String get premiumFeature => 'Recurso Premium';

  @override
  String get premiumUpgradeRequired =>
      'Este recurso requer upgrade para o plano Premium.';

  @override
  String get upgradeToPremium => 'Fazer Upgrade para Premium';

  @override
  String get deleteAllDataTitle => 'Excluir Todos os Dados';

  @override
  String get deleteAllDataConfirmation =>
      'Esta operação não pode ser desfeita. Tem certeza de que deseja excluir todos os dados?';

  @override
  String get deleteAllDataSuccess => 'Todos os dados foram excluídos';

  @override
  String get delete => 'Excluir';

  @override
  String get timing_title => 'Momento';

  @override
  String get timing_after_waking => 'Após acordar';

  @override
  String timing_after_waking_with_hours(int hours) {
    return 'Após acordar · ${hours}h';
  }

  @override
  String get timing_after_waking_with_placeholder => 'Após acordar · --h';

  @override
  String get day_type_title => 'Tipo de Dia';

  @override
  String get day_type_suggested => 'Tipo de dia sugerido';

  @override
  String get day_type_change_hint => 'Você pode mudar isso a qualquer momento';

  @override
  String get day_type_night_shift => 'Turno Noturno';

  @override
  String get day_type_busy => 'Dia Ocupado';

  @override
  String get day_type_eating_out => 'Comer Fora';

  @override
  String get day_type_recovery => 'Recuperação';

  @override
  String get day_type_regular => 'Regular';

  @override
  String get day_type_night_shift_description =>
      'Para horários tardios ou noturnos';

  @override
  String get day_type_busy_description => 'Para dias ocupados ou agitados';

  @override
  String get day_type_eating_out_description => 'Para dias com refeições fora';

  @override
  String get day_type_recovery_description =>
      'Para dias de descanso ou recuperação';

  @override
  String get day_type_regular_description => 'Para dias de rotina regular';

  @override
  String get ai_empathy_night_shift => 'Isso é comum em turnos noturnos.';

  @override
  String get ai_acceptance_general => 'Hoje não precisa ser perfeito.';

  @override
  String get ai_next_step_light_meal =>
      'Vamos manter a próxima refeição simples.';

  @override
  String get ai_next_step_anytime_ok => 'Uma escolha leve é suficiente.';

  @override
  String get ai_summary_no_pressure => 'Isso se encaixa em como foi hoje.';

  @override
  String get home_current_state => 'Estado Atual';

  @override
  String get home_next_action => 'Próxima Ação';

  @override
  String get home_quick_log_food => 'Comida';

  @override
  String get home_quick_log_water => 'Água';

  @override
  String get home_quick_log_weight => 'Peso';

  @override
  String get home_error_state_message =>
      'Algo não se alinhou. Está tudo bem registrar primeiro.';

  @override
  String get home_retry => 'Tentar novamente';

  @override
  String get home_empty_state_message =>
      'Está tudo bem se ainda não houver registro. Podemos começar do seu estado atual.';

  @override
  String get home_premium_detail_hint =>
      '※ Explicações detalhadas estão disponíveis em Coach Detail';

  @override
  String get nightCycleIntro1Title => 'Bem-vindo ao Night Cycle';

  @override
  String get nightCycleIntro1Description =>
      'Este aplicativo é para pessoas que trabalham em turnos noturnos ou têm um estilo de vida noturno.\n\nComer à noite é normal. Não é um problema.\n\nÉ uma ferramenta para proteger seu estilo de vida, não mudá-lo.';

  @override
  String get nightCycleIntro2Title => 'Sem avaliações ou objetivos';

  @override
  String get nightCycleIntro2Description =>
      'Este aplicativo não tem taxas de conquista, pontuações ou gráficos.\n\nEle apenas informa seu estado físico atual e sugere uma coisa que você pode fazer a seguir.\n\nÉ uma ferramenta que você pode usar com confiança mesmo quando está cansado de tomar decisões.';

  @override
  String get wakeTimeSetupTitle => 'Definir hora de despertar';

  @override
  String get wakeTimeSetupDescription =>
      'Este é o \"início do seu dia\".\n\nNão usamos tempo social (manhã, tarde, noite). Tudo é calculado a partir deste momento.';

  @override
  String get wakeTimeSetupTapToChange => 'Toque para alterar';

  @override
  String get language_selection_title => 'Selecionar idioma';

  @override
  String get languageSelectionScreenTitle => 'Selecionar idioma';

  @override
  String get languageSelectionContinue => 'Continuar';

  @override
  String get homeChangeWakeTime => 'Alterar hora de despertar';

  @override
  String get homeTestOpenAiApi => 'Testar API do OpenAI';

  @override
  String get homeOpenChat => 'Abrir chat';

  @override
  String get homeScreenDebugTag => 'HOME_SCREEN';

  @override
  String get intro_phase1_title => 'Sobre o Night Cycle';

  @override
  String get intro_phase1_message1 =>
      'Night Cycle é construído especificamente para trabalhadores noturnos\ne pessoas que vivem à noite.';

  @override
  String get intro_phase1_message2 =>
      'Este aplicativo não suporta\num estilo de vida centrado na manhã.';

  @override
  String get intro_phase1_message3 => 'Estar acordado à noite é normal aqui.';

  @override
  String get intro_phase2_title => 'Night Cycle';

  @override
  String get intro_phase2_message1 =>
      'Tudo é calculado a partir da sua hora de despertar,\nnão a hora do relógio.';

  @override
  String get intro_phase2_message2 => 'Comer à noite é assumido, não julgado.';

  @override
  String get intro_phase2_message3 =>
      'Sugerimos uma próxima ação\nque se ajusta ao seu ritmo atual.';

  @override
  String get wakeTimeSetupSelectTime => 'Selecionar hora';

  @override
  String wakeTimeSetupSelected(String time) {
    return 'Selecionado: $time';
  }

  @override
  String get wakeTimeSetupPleaseSelect =>
      'Por favor, selecione uma hora de despertar';
}
