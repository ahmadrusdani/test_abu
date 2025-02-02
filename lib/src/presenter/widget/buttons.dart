import 'package:flutter/material.dart';
import 'package:test_abu/src/core/themes.dart';

const kButtonBorderRadius = BorderRadius.all(Radius.circular(20));
const _kShape = RoundedRectangleBorder(borderRadius: kButtonBorderRadius);
const kButtonVisualDensity = VisualDensity.compact;

class WhiteElevatedButton extends ElevatedButton {
  WhiteElevatedButton({
    super.key,
    required super.onPressed,
    required super.child,
    required double height,
    double? elevation,
    VisualDensity visualDensity = kButtonVisualDensity,
    OutlinedBorder shape = _kShape,
  }) : super(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.orange,
            shape: shape,
            visualDensity: visualDensity,
            textStyle: TextStyles.bold14,
            elevation: elevation,
            fixedSize: Size.fromHeight(height),
          ),
        );
}

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.icon,
    this.busy = false,
    this.height = 46,
    this.margin = const EdgeInsets.symmetric(vertical: 8),
    this.padding,
  }) : super(key: key);

  const PrimaryButton.icon({
    Key? key,
    required this.onPressed,
    required Widget label,
    required IconData this.icon,
    this.busy = false,
    this.height = 46,
    this.margin = const EdgeInsets.symmetric(vertical: 8),
    this.padding,
  })  : child = label,
        super(key: key);

  final VoidCallback? onPressed;
  final Widget child;
  final IconData? icon;
  final bool busy;
  final double height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final style = ElevatedButton.styleFrom(
      shape: _kShape,
      textStyle: TextStyles.bold14,
      backgroundColor: Colors.transparent,
      disabledBackgroundColor: Colors.transparent,
      disabledForegroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      fixedSize: Size.fromHeight(height),
      padding: padding,
      elevation: 0,
      visualDensity: kButtonVisualDensity,
    ).copyWith(
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        return Colors.white;
      }),
    );

    ElevatedButton button;

    if (busy || icon != null) {
      button = ElevatedButton.icon(
        style: style,
        onPressed: busy ? null : onPressed,
        icon: icon == null
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator.adaptive(
                    backgroundColor: Colors.white),
              )
            : Icon(icon),
        label: child,
      );
    } else {
      button = ElevatedButton(style: style, onPressed: onPressed, child: child);
    }

    return Container(
      margin: margin,
      height: height,
      decoration: onPressed == null
          ? BoxDecoration(
              color: Colors.grey[500], borderRadius: kButtonBorderRadius)
          : const BoxDecoration(
              color: Colors.orange,
              borderRadius: kButtonBorderRadius,
            ),
      child: button,
    );
  }
}

class PrimaryOutlinedButton extends StatelessWidget {
  const PrimaryOutlinedButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.height = 46,
    this.busy = false,
    this.visualDensity = kButtonVisualDensity,
    this.shape,
    this.padding,
    this.backgroundColor,
  })  : icon = null,
        super(key: key);

  const PrimaryOutlinedButton.icon({
    Key? key,
    required this.onPressed,
    required this.child,
    this.height = 46,
    this.busy = false,
    this.visualDensity = kButtonVisualDensity,
    this.shape,
    this.padding,
    this.backgroundColor,
    required this.icon,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final Widget child;
  final double height;
  final bool busy;
  final VisualDensity visualDensity;
  final OutlinedBorder? shape;
  final EdgeInsetsGeometry? padding;
  final Widget? icon;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final style = OutlinedButton.styleFrom(
      fixedSize: Size.fromHeight(height),
      visualDensity: visualDensity,
      shape: shape,
      padding: padding,
      side: onPressed != null
          ? null
          : const BorderSide(color: Colors.grey),
      backgroundColor: backgroundColor,
    );

    if (busy || icon != null) {
      return OutlinedButton.icon(
        onPressed: busy ? null : onPressed,
        style: style,
        icon: icon ??
            const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator.adaptive()),
        label: child,
      );
    }

    return OutlinedButton(onPressed: onPressed, style: style, child: child);
  }
}
