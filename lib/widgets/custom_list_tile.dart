import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/zondicons.dart';

class CustomListTile extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const CustomListTile({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        splashColor: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        // onTap: () async {
        //   await Future.delayed(Duration(milliseconds: 200));
        //   onTap();
        // },
        onTap: onTap,
        child: Container(
          // height: 55,
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
              Iconify(Zondicons.arrow_right, size: 15),
            ],
          ),
        ),
      ),
    );
  }
}
