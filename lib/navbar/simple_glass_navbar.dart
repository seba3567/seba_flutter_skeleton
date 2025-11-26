import 'dart:ui';
import 'package:flutter/material.dart';
import '../styles/theme/app_colors.dart';

/// Bottom Navigation Bar alternativo con estilo simplificado
class SimpleGlassNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const SimpleGlassNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  static const _borderRadius = BorderRadius.all(Radius.circular(30));
  static const _margin = EdgeInsets.all(20);

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Container(
        margin: _margin,
        height: 65,
        decoration: const BoxDecoration(
          borderRadius: _borderRadius,
          boxShadow: [
            BoxShadow(
              color: Color(0x33000000),
              blurRadius: 30,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: _borderRadius,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0x26FFFFFF),
                borderRadius: _borderRadius,
                border: Border.fromBorderSide(
                  BorderSide(color: Color(0x33FFFFFF), width: 1.5),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildNavIcon(Icons.home_rounded, 0),
                  _buildNavIcon(Icons.calendar_today_rounded, 1),
                  _buildNavIcon(Icons.restaurant_rounded, 2),
                  _buildNavIcon(Icons.check_circle_outline_rounded, 3),
                  _buildNavIcon(Icons.person_rounded, 4),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavIcon(IconData icon, int index) {
    final isActive = currentIndex == index;

    return Expanded(
      child: InkWell(
        onTap: () => onTap(index),
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: double.infinity,
          alignment: Alignment.center,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: isActive
                  ? const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xFFFF9A56), Color(0xFFFF6B35)],
                    )
                  : null,
              boxShadow: isActive
                  ? [
                      BoxShadow(
                        color: const Color(0xFFFF6B35).withValues(alpha: 0.4),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ]
                  : null,
            ),
            child: Icon(
              icon,
              size: 24,
              color: isActive ? Colors.white : AppColors.textSecondary,
            ),
          ),
        ),
      ),
    );
  }
}
