import 'dart:ui';
import 'package:flutter/material.dart';
import '../styles/theme/app_colors.dart';

/// Liquid Glass NavBar - Versión Dark
class LiquidGlassNavBarDark extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const LiquidGlassNavBarDark({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      height: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.4),
            blurRadius: 40,
            offset: const Offset(0, 15),
          ),
          BoxShadow(
            color: AppColors.primary.withValues(alpha: 0.2),
            blurRadius: 20,
            spreadRadius: -5,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(35),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white.withValues(alpha: 0.12),
                  Colors.white.withValues(alpha: 0.08),
                ],
              ),
              borderRadius: BorderRadius.circular(35),
              border: Border.all(
                width: 1.5,
                color: Colors.white.withValues(alpha: 0.15),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildNavItem(Icons.home_rounded, 'Home', 0),
                _buildNavItem(Icons.explore_rounded, 'Explore', 1),
                _buildNavItem(Icons.favorite_rounded, 'Likes', 2),
                _buildNavItem(Icons.person_rounded, 'Profile', 3),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    final isActive = currentIndex == index;

    return Expanded(
      child: GestureDetector(
        onTap: () => onTap(index),
        behavior: HitTestBehavior.opaque,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: isActive
                      ? LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            AppColors.primary.withValues(alpha: 0.8),
                            AppColors.accent.withValues(alpha: 0.8),
                          ],
                        )
                      : null,
                  boxShadow: isActive
                      ? [
                          BoxShadow(
                            color: AppColors.primary.withValues(alpha: 0.5),
                            blurRadius: 15,
                            spreadRadius: 2,
                          ),
                        ]
                      : null,
                ),
                child: Icon(
                  icon,
                  size: 24,
                  color: isActive ? Colors.white : AppColors.textTertiary,
                ),
              ),
              const SizedBox(height: 4),
              AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 300),
                style: TextStyle(
                  fontSize: isActive ? 11 : 10,
                  fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
                  color: isActive
                      ? AppColors.textPrimary
                      : AppColors.textTertiary,
                ),
                child: Text(label),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Liquid Glass NavBar - Versión Light
class LiquidGlassNavBarLight extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const LiquidGlassNavBarLight({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      height: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 30,
            offset: const Offset(0, 10),
          ),
          BoxShadow(
            color: const Color(0xFF4A90E2).withValues(alpha: 0.1),
            blurRadius: 20,
            spreadRadius: -5,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(35),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white.withValues(alpha: 0.95),
                  Colors.white.withValues(alpha: 0.85),
                ],
              ),
              borderRadius: BorderRadius.circular(35),
              border: Border.all(
                width: 1.5,
                color: Colors.white.withValues(alpha: 0.8),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildNavItem(Icons.home_rounded, 'Home', 0),
                _buildNavItem(Icons.explore_rounded, 'Explore', 1),
                _buildNavItem(Icons.favorite_rounded, 'Likes', 2),
                _buildNavItem(Icons.person_rounded, 'Profile', 3),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    final isActive = currentIndex == index;

    return Expanded(
      child: GestureDetector(
        onTap: () => onTap(index),
        behavior: HitTestBehavior.opaque,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: isActive
                      ? const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFF667EEA), Color(0xFF764BA2)],
                        )
                      : null,
                  color: isActive ? null : Colors.grey.withValues(alpha: 0.1),
                  boxShadow: isActive
                      ? [
                          BoxShadow(
                            color: const Color(
                              0xFF667EEA,
                            ).withValues(alpha: 0.4),
                            blurRadius: 15,
                            spreadRadius: 2,
                          ),
                        ]
                      : null,
                ),
                child: Icon(
                  icon,
                  size: 24,
                  color: isActive ? Colors.white : const Color(0xFF64748B),
                ),
              ),
              const SizedBox(height: 4),
              AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 300),
                style: TextStyle(
                  fontSize: isActive ? 11 : 10,
                  fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
                  color: isActive
                      ? const Color(0xFF1E293B)
                      : const Color(0xFF94A3B8),
                ),
                child: Text(label),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
