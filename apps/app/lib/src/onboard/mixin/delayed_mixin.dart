import 'package:flutter/material.dart';

mixin DelayedMixin {
  /// 指定した時間後に関数を実行する
  /// デフォルトは1000ms
  Future<void> delayed(
    VoidCallback function, {
    Duration duration = const Duration(milliseconds: 1000),
  }) async {
    await Future<void>.delayed(duration);
    function();
  }
}
