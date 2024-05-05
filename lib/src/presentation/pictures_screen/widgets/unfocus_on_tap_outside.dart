import 'package:flutter/widgets.dart';

/// Виджет помогающий снять фокус при тапе вно вне текстовых полях
class UnfocusOnTapOutside extends StatelessWidget {
  final Widget child;

  const UnfocusOnTapOutside({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          final currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.focusedChild?.unfocus();
          }
        },
        child: child,
      );
}
