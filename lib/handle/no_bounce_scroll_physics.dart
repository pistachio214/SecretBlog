import 'package:flutter/widgets.dart';

class NoBounceScrollPhysics extends ScrollPhysics {
  const NoBounceScrollPhysics();

  @override
  bool shouldAcceptUserOffset(ScrollMetrics position) {
    // 允许用户输入来滚动
    return true;
  }

  @override
  double applyPhysicsToUserOffset(ScrollMetrics position, double offset) {
    // 阻止回弹效果
    return 0.0;
  }

  @override
  double applyBoundaryConditions(ScrollMetrics position, double value) {
    // 当到达边界时，直接返回边界值，不应用任何额外的偏移
    if (value < position.minScrollExtent) return position.minScrollExtent;
    if (value > position.maxScrollExtent) return position.maxScrollExtent;
    return value;
  }

  @override
  Simulation? createBallisticSimulation(
      ScrollMetrics position, double velocity) {
    // 不创建基于物理的模拟（即禁用回弹）
    return null;
  }

  @override
  String toString() {
    return 'NoBounceScrollPhysics';
  }
}
