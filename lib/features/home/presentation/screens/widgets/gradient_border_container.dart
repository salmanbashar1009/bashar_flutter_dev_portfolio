import 'package:bashar_flutter_dev_portfolio/core/constants/app_colors.dart';
import 'package:bashar_flutter_dev_portfolio/core/utils/utils.dart';
import 'package:flutter/material.dart';

class GradientBorderContainer extends StatelessWidget {
  const GradientBorderContainer({super.key, this.width, this.height});
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ShaderMask(
        shaderCallback: (Rect bounds) {
          return LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: AppColors.colors,
          ).createShader(bounds);
        },
        blendMode: BlendMode.srcIn, // important
        child: Container(
          width: width ?? 24,
          height: height ?? 24,
          // padding: EdgeInsets.only(bottom: 2),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(5),
            border: Utils.appBorder(),
          ),
          child: Text(
            'HB',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}
