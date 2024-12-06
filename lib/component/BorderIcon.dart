import 'package:flutter/material.dart' as BorderIconRadius;

import 'constants.dart';

class BorderIcon extends BorderIconRadius.StatelessWidget {
  final BorderIconRadius.Widget child;
  final BorderIconRadius.EdgeInsets? padding;
  final double? width, height;

  const BorderIcon({
    super.key,
    required this.child,
    this.padding,
    this.width,
    this.height,
  });

  @override
  BorderIconRadius.Widget build(BorderIconRadius.BuildContext context) {
    return BorderIconRadius.Container(
      width: width,
      height: height,
      decoration: BorderIconRadius.BoxDecoration(
        color: colorWhite,
        borderRadius: const BorderIconRadius.BorderRadius.all(BorderIconRadius.Radius.circular(15.0)),
        border: BorderIconRadius.Border.all(color: colorGrey.withAlpha(40), width: 2),
      ),
      padding: padding ?? const BorderIconRadius.EdgeInsets.all(8.0),
      child: BorderIconRadius.Center(child: child),
    );
  }
}
