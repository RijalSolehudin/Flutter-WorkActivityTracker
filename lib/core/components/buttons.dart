import 'package:flutter/material.dart';

enum ButtonStyleType { filled, outlined }

class Button extends StatelessWidget {
  const Button.filled({
    super.key,
    required this.onPressed,
    required this.label,
    this.style = ButtonStyleType.filled,
    this.width = double.infinity,
    this.height = 54.0,
    this.borderRadius = 8.0,
    this.icon,
    this.suffixIcon,
    this.disabled = false,
    this.fontSize = 14.0,
    this.fontWeight = FontWeight.w600,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.padding,
  });

  const Button.outlined({
    super.key,
    required this.onPressed,
    required this.label,
    this.style = ButtonStyleType.outlined,
    this.width = double.infinity,
    this.height = 54.0,
    this.borderRadius = 8.0,
    this.icon,
    this.suffixIcon,
    this.disabled = false,
    this.fontSize = 14.0,
    this.fontWeight = FontWeight.w600,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.padding,
  });

  final VoidCallback onPressed;
  final String label;
  final ButtonStyleType style;
  final double? width;
  final double height;
  final double borderRadius;
  final Widget? icon;
  final Widget? suffixIcon;
  final bool disabled;
  final double fontSize;
  final FontWeight fontWeight;
  final MainAxisAlignment mainAxisAlignment;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    final Color buttonColor = isDarkMode ? Colors.white : Colors.black;
    final Color textColor = isDarkMode ? Colors.black : Colors.white;

    return SizedBox(
      height: height,
      width: width,
      child: style == ButtonStyleType.filled
          ? ElevatedButton(
              onPressed: disabled ? null : onPressed,
              style: ElevatedButton.styleFrom(
                padding: padding,
                backgroundColor: buttonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
              child: Row(
                mainAxisAlignment: mainAxisAlignment,
                children: [
                  if (icon != null && label.isNotEmpty) ...[
                    icon ?? const SizedBox.shrink(),
                    const SizedBox(width: 10.0),
                  ],
                  Text(
                    label,
                    style: TextStyle(
                      color: textColor,
                      fontSize: fontSize,
                      fontWeight: fontWeight,
                    ),
                  ),
                  if (suffixIcon != null && label.isNotEmpty) ...[
                    const SizedBox(width: 10.0),
                    suffixIcon ?? const SizedBox.shrink(),
                  ],
                ],
              ),
            )
          : OutlinedButton(
              onPressed: disabled ? null : onPressed,
              style: OutlinedButton.styleFrom(
                padding: padding,
                backgroundColor: Colors.transparent,
                side: BorderSide(color: buttonColor),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
              child: Row(
                mainAxisAlignment: mainAxisAlignment,
                children: [
                  if (icon != null && label.isNotEmpty) ...[
                    icon ?? const SizedBox.shrink(),
                    const SizedBox(width: 10.0),
                  ],
                  Text(
                    label,
                    style: TextStyle(
                      color: buttonColor,
                      fontSize: fontSize,
                      fontWeight: fontWeight,
                    ),
                  ),
                  if (suffixIcon != null && label.isNotEmpty) ...[
                    const SizedBox(width: 10.0),
                    suffixIcon ?? const SizedBox.shrink(),
                  ],
                ],
              ),
            ),
    );
  }
}
