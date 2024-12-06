import 'package:flutter/material.dart';

import '../constants/colors_text_theme.dart';



class IconBorderRadius extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final double? width, height;

  const IconBorderRadius({
    super.key,
    required this.child,
    this.padding,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: colorWhite,
        borderRadius: const BorderRadius.all(Radius.circular(15.0)),
        border: Border.all(color: colorGrey.withAlpha(40), width: 2),
      ),
      padding: padding ?? const EdgeInsets.all(8.0),
      child: Center(child: child),
    );
  }
}
