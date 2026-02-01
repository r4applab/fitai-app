// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wake_time_ssot_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$wakeTimeRepositoryHash() =>
    r'b1ed0f67ab67b125694ab1a1904119c59a0bc0e1';

/// 起床時刻SSOT用Provider
/// Night Cycle v1 フェーズ1-3: Wake Time Setup（SSOT 正式版）
///
/// 起床時刻の保存・取得を一元管理するProvider
///
/// Copied from [wakeTimeRepository].
@ProviderFor(wakeTimeRepository)
final wakeTimeRepositoryProvider =
    AutoDisposeProvider<WakeTimeRepository>.internal(
  wakeTimeRepository,
  name: r'wakeTimeRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$wakeTimeRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef WakeTimeRepositoryRef = AutoDisposeProviderRef<WakeTimeRepository>;
String _$currentWakeTimeHash() => r'744fe221e59b195ed898168b0d74777e7bb6f6ec';

/// 現在の起床時刻を取得するProvider
/// 保存されていない場合は null を返す
///
/// Copied from [currentWakeTime].
@ProviderFor(currentWakeTime)
final currentWakeTimeProvider = AutoDisposeFutureProvider<TimeOfDay?>.internal(
  currentWakeTime,
  name: r'currentWakeTimeProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentWakeTimeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CurrentWakeTimeRef = AutoDisposeFutureProviderRef<TimeOfDay?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
