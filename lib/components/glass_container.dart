import 'dart:ui';
import 'package:flutter/material.dart';
import '../styles/theme/app_colors.dart';

/// Widget contenedor con efecto glassmorphism ISO 26
class GlassContainer extends StatelessWidget {
  final Widget child;
  final double blur;
  final double opacity;
  final BorderRadius? borderRadius;
  final Border? border;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? width;
  final double? height;

  const GlassContainer({
    super.key,
    required this.child,
    this.blur = 10,
    this.opacity = 0.15,
    this.borderRadius,
    this.border,
    this.padding,
    this.margin,
    this.width,
    this.height,
  });

  static const _defaultBorderRadius = BorderRadius.all(Radius.circular(16));
  static const _defaultBorder = Border.fromBorderSide(
    BorderSide(color: AppColors.borderGlass, width: 1),
  );

  @override
  Widget build(BuildContext context) {
    final effectiveBorderRadius = borderRadius ?? _defaultBorderRadius;
    return RepaintBoundary(
      child: Container(
        width: width,
        height: height,
        margin: margin,
        decoration: BoxDecoration(
          borderRadius: effectiveBorderRadius,
          border: border ?? _defaultBorder,
        ),
        child: ClipRRect(
          borderRadius: effectiveBorderRadius,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
            child: Container(
              padding: padding,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, opacity),
                borderRadius: effectiveBorderRadius,
              ),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}

/// Widget Card con efecto glass
class GlassCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final VoidCallback? onTap;

  const GlassCard({
    super.key,
    required this.child,
    this.padding,
    this.margin,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final container = GlassContainer(
      padding: padding ?? const EdgeInsets.all(16),
      margin: margin,
      child: child,
    );

    if (onTap != null) {
      return InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: container,
      );
    }

    return container;
  }
}
