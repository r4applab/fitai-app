import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:fitai_app/domain/repository/language_repository.dart';
import 'package:fitai_app/data/repository/language_repository_impl.dart';

part 'language_ssot_provider.g.dart';

/// 言語SSOT用Provider
/// Night Cycle v1 フェーズ1-1
/// 
/// 言語コードの保存・取得を一元管理するProvider
@riverpod
LanguageRepository languageRepository(LanguageRepositoryRef ref) {
  return LanguageRepositoryImpl();
}

/// 現在の言語コードを取得するProvider
/// 保存されていない場合は null を返す
@riverpod
Future<String?> currentLanguageCode(CurrentLanguageCodeRef ref) async {
  final repository = ref.watch(languageRepositoryProvider);
  return repository.getLanguageCode();
}

/// 言語コードを保存する関数
/// 保存後に currentLanguageCodeProvider が自動的に更新される
Future<void> saveLanguageCode({
  required LanguageRepository repository,
  required String languageCode,
  required void Function() onSaved,
}) async {
  await repository.saveLanguageCode(languageCode);
  onSaved(); // Providerの再読み込みをトリガー
}
