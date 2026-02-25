import 'package:flutter/widgets.dart';

class Utils {
  static BoxBorder appBorder({Color? color, double? width}) {
    return Border.all(
      color: color ?? const Color(0xFF151E32),
      width: width ?? 2,
    );
  }
}
