import 'package:flutter/material.dart';
import 'package:mini_project_fe_mobile/core/constants/colors.dart';

class AuthToggle extends StatelessWidget {
  final String title;
  final String title2;

  final bool isSelected;
  final VoidCallback onToggle;

  const AuthToggle(
      {super.key,
      required this.isSelected,
      required this.onToggle,
      required this.title,
      required this.title2});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    final Color primaryColor = isDarkMode ? Colors.white : AppColors.black;
    final Color secondaryColor =
        isDarkMode ? AppColors.background2 : Colors.white;

    return Row(
      children: [
        TextButton(
          onPressed: () {
            if (!isSelected) onToggle();
          },
          style: OutlinedButton.styleFrom(
            backgroundColor: isSelected ? primaryColor : secondaryColor,
          ),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: isSelected ? secondaryColor : primaryColor,
            ),
          ),
        ),
        const SizedBox(width: 10),
        TextButton(
          onPressed: () {
            if (isSelected) onToggle();
          },
          style: OutlinedButton.styleFrom(
            backgroundColor: isSelected ? secondaryColor : primaryColor,
          ),
          child: Text(
            title2,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: isSelected ? primaryColor : secondaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
