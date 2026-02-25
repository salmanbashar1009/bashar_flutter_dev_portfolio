import 'package:bashar_flutter_dev_portfolio/core/constants/app_colors.dart';
import 'package:bashar_flutter_dev_portfolio/features/home/presentation/screens/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class CommandButton extends StatefulWidget {
  const CommandButton({super.key});

  @override
  State<CommandButton> createState() => _CommandButtonState();
}

class _CommandButtonState extends State<CommandButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        curve: Curves.easeOut,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(99), // match your button radius
          boxShadow: [
            if (isHovered)
              BoxShadow(
                color: Colors.blueAccent.withAlpha(128), // ← change color
                blurRadius: 8,
                spreadRadius: 1,
                offset: const Offset(0, 0),
              ),
            // optional: subtle always-on shadow
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: PrimaryButton(
          borderColor: AppColors.borderColor,
          background: AppColors.background,
          borderWidth: 2,
          // Make sure PrimaryButton has transparent / no extra shadow itself
          child: Row(
            mainAxisSize: MainAxisSize.min,
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
        ),
      ),
    );
  }
}
