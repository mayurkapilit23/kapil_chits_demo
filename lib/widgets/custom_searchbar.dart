import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class CustomSearchbar extends StatelessWidget {
  final TextEditingController searchTextController;

  const CustomSearchbar({super.key, required this.searchTextController});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 382,
      height: 65,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: TextField(
          controller: searchTextController,

          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: TextStyle(
              color: AppColors.lightGrey,
              fontWeight: FontWeight.w400,
            ),
            prefixIcon: Icon(Icons.search_rounded, color: AppColors.lightGrey),
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15.0),
          ),
        ),
      ),
    );
  }
}
