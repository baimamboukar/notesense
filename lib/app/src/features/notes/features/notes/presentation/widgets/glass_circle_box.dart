import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class GlassCircleBox extends StatelessWidget {
  const GlassCircleBox({
    required this.child,
    required this.color,
    this.radius = 48,
    super.key,
  });
  final Widget child;
  final Color color;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return GlassContainer.clearGlass(
      height: radius,
      width: radius,
      color: color,
      borderColor: Colors.transparent,
      shape: BoxShape.circle,
      child: child,
    );
  }
}
