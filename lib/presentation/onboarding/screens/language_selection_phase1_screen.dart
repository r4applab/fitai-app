import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fitai_app/l10n/app_localizations.dart';
import 'package:fitai_app/core/providers/language_ssot_provider.dart';
import 'package:fitai_app/presentation/onboarding/screens/intro_phase1_screen.dart';

/// Language Selection 画面
/// Night Cycle v1 フェーズ1-1
/// 
/// 初回起動時に言語を選択する画面
/// 選択した言語をSSOTとして保存
class LanguageSelectionPhase1Screen extends ConsumerStatefulWidget {
  const LanguageSelectionPhase1Screen({super.key});

  @override
  ConsumerState<LanguageSelectionPhase1Screen> createState() =>
      _LanguageSelectionPhase1ScreenState();
}

class _LanguageSelectionPhase1ScreenState
    extends ConsumerState<LanguageSelectionPhase1Screen> {
  // 対応言語コード（固定）
  static const List<Map<String, String>> _supportedLanguages = [
    {'code': 'en', 'nativeName': 'English'},
    {'code': 'ja', 'nativeName': '日本語'},
    {'code': 'es', 'nativeName': 'Español'},
    {'code': 'pt-BR', 'nativeName': 'Português (Brasil)'},
    {'code': 'hi', 'nativeName': 'हिन्दी'},
    {'code': 'id', 'nativeName': 'Bahasa Indonesia'},
  ];

  String? _selectedLanguageCode;

  /// 言語を選択
  void _selectLanguage(String languageCode) {
    setState(() {
      _selectedLanguageCode = languageCode;
    });
  }

  /// Continue ボタン押下時
  /// 選択した言語を保存してHomeScreenに遷移
  Future<void> _continue() async {
    if (_selectedLanguageCode == null) {
      return;
    }

    try {
      final repository = ref.read(languageRepositoryProvider);
      await repository.saveLanguageCode(_selectedLanguageCode!);

      // Provider を invalidate して MaterialApp.locale を即時反映させる。
      // MaterialApp は同一 element として再利用されるため
      // Navigator stack は破棄されない。
      ref.invalidate(currentLanguageCodeProvider);

      // Intro①に遷移
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const IntroPhase1Screen(),
          ),
        );
      }
    } catch (e) {
      // エラー時はスナックバーで通知
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to save language: $e'),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.language_selection_title),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 48),
              // 言語一覧
              Expanded(
                child: ListView.separated(
                  itemCount: _supportedLanguages.length,
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) {
                    final language = _supportedLanguages[index];
                    final code = language['code']!;
                    final nativeName = language['nativeName']!;
                    final isSelected = _selectedLanguageCode == code;

                    return ListTile(
                      title: Text(
                        nativeName,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: isSelected
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                      trailing: isSelected
                          ? const Icon(Icons.check, color: Colors.blue)
                          : null,
                      onTap: () => _selectLanguage(code),
                    );
                  },
                ),
              ),
              const SizedBox(height: 24),
              // Continue ボタン
              SizedBox(
                width: double.infinity,
                  child: ElevatedButton(
                  onPressed:
                      _selectedLanguageCode != null ? _continue : null,
                  child: Text(l10n.continueButton),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
