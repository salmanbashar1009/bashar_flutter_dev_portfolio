import 'package:bashar_flutter_dev_portfolio/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    this.title,
    this.child,
    this.background,
    this.borderColor,
    this.borderWidth,
  });

  final String? title;
  final Widget? child;
  final Color? background;
  final Color? borderColor;
  final double? borderWidth;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: 36,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: background ?? AppColors.primary,
        borderRadius: BorderRadius.circular(99),
        border: Border.all(color: borderColor ?? Colors.transparent, width: 1),
      ),
      child:
          child ??
          Text(
            title ?? "Let's Talk",
            style: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
          ),
    );
  }
}
