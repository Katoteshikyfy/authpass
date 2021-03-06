import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LinkButton extends StatelessWidget {
  const LinkButton(
      {Key key,
      @required this.child,
      this.onPressed,
      this.icon,
      this.padding,
      this.materialTapTargetSize})
      : super(key: key);

  final Widget child;
  final VoidCallback onPressed;
  final Icon icon;
  final EdgeInsetsGeometry padding;
  final MaterialTapTargetSize materialTapTargetSize;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return icon == null
        ? FlatButton(
            child: child,
            onPressed: onPressed,
            textColor: theme.primaryColor,
            padding: padding,
            materialTapTargetSize: materialTapTargetSize,
          )
        : FlatButton.icon(
            onPressed: onPressed,
            icon: icon,
            label: child,
            textColor: theme.primaryColor,
            padding: padding,
            materialTapTargetSize: materialTapTargetSize,
          );
  }
}
