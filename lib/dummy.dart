import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';


class BottomBarStyle extends StyleHook {
  var iconStandardLarge = 28.0;
  var marginStandard = 8.0;
  var iconStandardMedium = 26.0;
  var fontSmall = 13;
  @override
  double get activeIconSize => iconStandardLarge;

  @override
  double get activeIconMargin => marginStandard;

  @override
  double get iconSize => iconStandardMedium;

  @override
  TextStyle textStyle(Color color, String? fontFamily) {
    return TextStyle(fontSize: 13, color: color);
  }
}
