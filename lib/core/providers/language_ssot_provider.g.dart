// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_ssot_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$languageRepositoryHash() =>
    r'b12729ef0e3493a6bf60a65f638b74f16d239326';

/// 言語SSOT用Provider
/// Night Cycle v1 フェーズ1-1
///
/// 言語コードの保存・取得を一元管理するProvider
///
/// Copied from [languageRepository].
@ProviderFor(languageRepository)
final languageRepositoryProvider =
    AutoDisposeProvider<LanguageRepository>.internal(
  languageRepository,
  name: r'languageRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$languageRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LanguageRepositoryRef = AutoDisposeProviderRef<LanguageRepository>;
String _$currentLanguageCodeHash() =>
    r'86451519e0dffb2c23c1d5bc927c78a56413e336';

/// 現在の言語コードを取得するProvider
/// 保存されていない場合は null を返す
///
/// Copied from [currentLanguageCode].
@ProviderFor(currentLanguageCode)
final currentLanguageCodeProvider = AutoDisposeFutureProvider<String?>.internal(
  currentLanguageCode,
  name: r'currentLanguageCodeProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentLanguageCodeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CurrentLanguageCodeRef = AutoDisposeFutureProviderRef<String?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
