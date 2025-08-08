import 'package:flutter/material.dart';

class CustomListTileWithIcon extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final IconData iconData;
  final color;

  const CustomListTileWithIcon({
    super.key,
    required this.text,
    required this.onTap,
    required this.iconData,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        splashColor: Colors.transparent,
        onTap: () async {
          await Future.delayed(Duration(milliseconds: 200));
          onTap();
        },
        borderRadius: BorderRadius.circular(10),
        child: Container(
          // margin: EdgeInsets.symmetric(vertical: 10),
          // height: 55,
          width: double.infinity,
          // padding: EdgeInsets.all(20),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                spacing: 20,
                children: [
                  Icon(iconData, color: color),
                  Text(
                    text,
                    style: TextStyle(fontWeight: FontWeight.bold, color: color),
                  ),
                ],
              ),
              Icon(Icons.arrow_forward, size: 20),
            ],
          ),
        ),
      ),
    );
  }
}
