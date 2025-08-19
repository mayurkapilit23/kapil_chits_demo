import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class CustomAccountInfoTile extends StatelessWidget {
  final String text;
  final String subText;
  final String imageUrl;
  final VoidCallback onTap;

  const CustomAccountInfoTile({
    super.key,
    required this.text,
    required this.subText,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.accountPrimaryColor,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        splashColor: Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        onTap: onTap,
        child: Container(
          width: 382,
          height: 85,
          padding: EdgeInsets.all(15),
          // decoration: BoxDecoration(
          //   // color: AppColors.accountPrimaryColor,
          //   borderRadius: BorderRadius.circular(8),
          // ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                spacing: 10,
                children: [
                  CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                  //name & mobile no section
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(text, style: TextStyle(fontWeight: FontWeight.w700)),
                      Text(
                        subText,
                        style: TextStyle(
                          color: AppColors.lightGrey,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Icon(Icons.arrow_forward, size: 20),

              // IconButton(
              //   onPressed: () {},
              //   icon: Icon(Icons.arrow_forward, size: 20),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
