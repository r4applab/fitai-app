import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter/material.dart';
import 'package:fitai_app/domain/repository/wake_time_repository.dart';
import 'package:fitai_app/data/repository/wake_time_repository_impl.dart';

part 'wake_time_ssot_provider.g.dart';

/// 起床時刻SSOT用Provider
/// Night Cycle v1 フェーズ1-3: Wake Time Setup（SSOT 正式版）
/// 
/// 起床時刻の保存・取得を一元管理するProvider
@riverpod
WakeTimeRepository wakeTimeRepository(WakeTimeRepositoryRef ref) {
  return WakeTimeRepositoryImpl();
}

/// 現在の起床時刻を取得するProvider
/// 保存されていない場合は null を返す
@riverpod
Future<TimeOfDay?> currentWakeTime(CurrentWakeTimeRef ref) async {
  final repository = ref.watch(wakeTimeRepositoryProvider);
  return repository.getWakeTime();
}

/// 起床時刻を保存する関数
/// 保存後に currentWakeTimeProvider が自動的に更新される
Future<void> saveWakeTime({
  required WakeTimeRepository repository,
  required TimeOfDay wakeTime,
  required void Function() onSaved,
}) async {
  await repository.saveWakeTime(wakeTime);
  onSaved(); // Providerの再読み込みをトリガー
}
