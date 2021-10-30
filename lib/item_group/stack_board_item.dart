import 'package:flutter/material.dart';
import 'package:stack_board/helper/case_style.dart';

///自定义对象
@immutable
class StackBoardItem {
  const StackBoardItem({
    required this.child,
    this.id,
    this.onEdit,
    this.onDel,
    this.caseStyle = const CaseStyle(),
  });

  final int? id;
  final Widget child;
  final Function(bool)? onEdit;
  final Future<bool> Function()? onDel;
  final CaseStyle? caseStyle;

  StackBoardItem copyWith({
    int? id,
    Widget? child,
    Function(bool)? onEdit,
    Future<bool> Function()? onDel,
    CaseStyle? caseStyle,
  }) =>
      StackBoardItem(
        id: id ?? this.id,
        child: child ?? this.child,
        onDel: onDel ?? this.onDel,
        onEdit: onEdit ?? this.onEdit,
        caseStyle: caseStyle ?? this.caseStyle,
      );

  bool sameWith(StackBoardItem item) => item.id == id;

  @override
  bool operator ==(Object other) => other is StackBoardItem && id == other.id;

  @override
  int get hashCode => id.hashCode;
}
