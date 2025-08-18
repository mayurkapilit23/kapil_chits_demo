import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/app_colors.dart';

class CustomPaymentMethodCard extends StatelessWidget {
  final VoidCallback onTap;
  final String image;
  final String text;

  const CustomPaymentMethodCard({
    super.key,
    required this.onTap,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        spacing: 5,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: 74,
            height: 74,
            decoration: BoxDecoration(
              color: AppColors.profilePrimaryColor,
              borderRadius: BorderRadius.circular(4),
            ),
            // child: Center(child: Image.asset(image)),
            child: Center(child: SvgPicture.asset(image)),
          ),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
