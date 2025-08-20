import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class ReusableChitDropdown extends StatelessWidget {
  final String label;
  final String value;
  final List<String> items;

  const ReusableChitDropdown({
    super.key,
    required this.label,
    required this.value,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 6),
        Container(
          decoration: BoxDecoration(
            color: AppColors.dropDownBgColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: DropdownButtonFormField<String>(
            value: value,
            items: items
                .map((item) => DropdownMenuItem(value: item, child: Text(item)))
                .toList(),
            onChanged: (val) {},
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                vertical: 14,
                horizontal: 12,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
