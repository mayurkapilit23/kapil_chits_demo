import 'package:flutter/material.dart';
import 'package:kapil_chits_demo/core/app_colors.dart';

class CustomTileLanguage extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const CustomTileLanguage({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        splashColor: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        onTap: onTap,
        child: Container(
          // height: 55,
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
              Icon(Icons.done,color: AppColors.paymentSuccessBgColor,),
            ],
          ),
        ),
      ),
    );
  }
}
