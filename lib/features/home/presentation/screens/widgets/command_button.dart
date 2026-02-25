import 'package:bashar_flutter_dev_portfolio/core/constants/app_colors.dart';
import 'package:bashar_flutter_dev_portfolio/core/utils/utils.dart';
import 'package:flutter/material.dart';

class CommandButton extends StatelessWidget {
  const CommandButton({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      alignment: Alignment.center,
      height: 36,
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: AppColors.background,
        border: Utils.appBorder(color: AppColors.borderColor),
        borderRadius: BorderRadius.circular(99),
      ),
      child: Row(
        children: [
          Text('Command', style: textTheme.bodyMedium),
          const SizedBox(width: 8),
          Text(
            '⌘',
            style: textTheme.bodyMedium?.copyWith(
              fontSize: 12,
              color: AppColors.primaryTextColor.withAlpha(150),
            ),
          ),
          const SizedBox(width: 2),
          Text(
            'K',
            style: textTheme.bodyMedium?.copyWith(
              color: AppColors.primaryTextColor.withAlpha(150),
            ),
          ),
        ],
      ),
    );
  }
}
