import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class CustomChip extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool isSelected;

  const CustomChip({super.key, required this.text, required this.onTap, required this.isSelected});

  // final isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 99,
        height: 42,
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(

          color: isSelected ? AppColors.darkPurple : Colors.transparent,
          borderRadius: BorderRadius.circular(50),
          border: isSelected
              ? Border.all(color: Colors.transparent, width: 0)
              : Border.all(color: AppColors.chipStrokeColor, width: 1),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
