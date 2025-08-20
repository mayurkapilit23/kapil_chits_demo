import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/reusable_chit_dropdown.dart';

class SearchChitScreen extends StatelessWidget {
  const SearchChitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.accountPrimaryColor,
      appBar: AppBar(backgroundColor: AppColors.accountPrimaryColor),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Search Chits',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
              ),
              SizedBox(height: 10),
              Text(
                'Just need a few details to check your eligibility. Your info stays safe with us 🤝',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              ),

              SizedBox(height: 20),

              ReusableChitDropdown(
                label: 'Chit Value',
                value: '10,000',
                items: ['10,000', '20,000', '30,000'], hint: 'Select value',
              ),
              SizedBox(height: 20),
              ReusableChitDropdown(
                label: 'Branch',
                value: '10,000',
                items: ['10,000', '20,000', '30,000'], hint: 'Select branch',
              ),
              SizedBox(height: 20),
              ReusableChitDropdown(
                label: 'Chit Period',
                value: 'January',
                items: [
                  "January",
                  "February",
                  "March",
                  "April",
                  "May",
                  "June",
                  "July",
                  "August",
                  "September",
                  "October",
                  "November",
                  "December",
                ], hint: 'Select Period',
              ),
              Spacer(),
              CustomButton(onPressed: (){}, text: 'Search')
            ],
          ),
        ),
      ),
    );
  }
}
