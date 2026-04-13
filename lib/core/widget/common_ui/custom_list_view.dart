import 'package:flutter/material.dart';

class CustomListView<T> extends StatelessWidget {
  const CustomListView({
    super.key,
    required this.items,
    required this.itemBuilder,
    this.controller,
    this.primary,
    this.padding = const EdgeInsets.symmetric(vertical: 00),
  });

  final List<T> items;
  final Widget Function(T) itemBuilder;

  final ScrollController? controller;
  final bool? primary;

  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: controller,
      primary: primary,
      padding: padding,
      itemCount: items.length,
      itemBuilder: (ctx, i) => itemBuilder(items[i]),
    );
  }
}
