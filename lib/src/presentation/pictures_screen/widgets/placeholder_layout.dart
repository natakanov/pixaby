import 'package:flutter/material.dart';

class PlaceholderLayout extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;

  const PlaceholderLayout({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(16),
  });

  @override
  Widget build(BuildContext context) => ColoredBox(
        color: Colors.grey,
        child: Padding(
          padding: padding,
          child: child,
        ),
      );
}
