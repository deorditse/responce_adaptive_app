//чтобы принимать в себя разные layout для разных условий и делать проверку внутри

import 'package:flutter/material.dart';

class AdaptiveWidget extends StatelessWidget {
  final Widget? narrow;
  final Widget? wide;
  final Widget? ultraWide;
  final Widget? other;

  AdaptiveWidget({
    this.narrow,
    this.other,
    this.ultraWide,
    this.wide,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width >= 1920 && ultraWide != null) {
      return ultraWide!;
    }
    if (width > 720 && wide != null) {
      return wide!;
    }
    if (width <= 720 && narrow != null) {
      return narrow!;
    }
    if (other != null) {
      return other!;
    }

    throw Exception('Can not watch layout');
  }
}
