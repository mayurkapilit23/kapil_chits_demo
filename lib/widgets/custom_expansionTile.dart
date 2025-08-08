import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class CustomExpansionTile extends StatelessWidget {
  final String question;
  final String answer;

  const CustomExpansionTile({
    super.key,
    required this.question,
    required this.answer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ExpansionTile(
        title: Text(question, style: TextStyle(fontWeight: FontWeight.w600)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), //
        ),
        collapsedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), //
        ),
        tilePadding: EdgeInsets.symmetric(horizontal: 16),

        children: [
          Divider(thickness: 1, height: 1, color: AppColors.dottedLineColor),
          ListTile(
            title: Text(answer, style: TextStyle(fontWeight: FontWeight.w500)),
          ),
        ],
      ),
    );
  }
}
