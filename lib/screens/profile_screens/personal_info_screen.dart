import 'package:flutter/material.dart';
import 'package:kapil_chits_demo/core/app_colors.dart';
import 'package:kapil_chits_demo/screens/profile_screens/account_screen.dart';

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.accountPrimaryColor,
      appBar: AppBar(
        title: const Text(
          "Personal Info",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Picture
            Center(
              child: Stack(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      AccountScreen.profileImage,
                    ), // Demo avatar
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 16,
                      backgroundColor: AppColors.paymentSuccessBgColor,
                      child: const Icon(
                        Icons.edit,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Reusable Form Fields
            ReusableTextField(label: "Full Name", value: "Priyal Sharma"),
            const SizedBox(height: 16),

            ReusableTextField(label: "Phone Number", value: "+91 8387052888"),
            const SizedBox(height: 16),

            ReusableTextField(
              label: "Email",
              value: "priyalsharma@yourdomain.com",
              prefixIcon: Icons.email_outlined,
            ),
            const SizedBox(height: 16),

            ReusableDropdown(
              label: "Gender",
              value: "Female",
              items: const ["Male", "Female", "Other"],
            ),
            const SizedBox(height: 16),

            ReusableTextField(
              label: "Date of Birth",
              value: "12-27-1995",
              suffixIcon: Icons.calendar_today,
            ),
          ],
        ),
      ),
    );
  }
}

class ReusableTextField extends StatelessWidget {
  final String label;
  final String value;
  final IconData? prefixIcon;
  final IconData? suffixIcon;

  const ReusableTextField({
    super.key,
    required this.label,
    required this.value,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 6),
        Container(
          decoration: BoxDecoration(
            color: AppColors.profilePrimaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            controller: TextEditingController(text: value),
            // readOnly: true,
            decoration: InputDecoration(
              prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
              suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
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

class ReusableDropdown extends StatelessWidget {
  final String label;
  final String value;
  final List<String> items;

  const ReusableDropdown({
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
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 6),
        Container(
          decoration: BoxDecoration(
            color: AppColors.profilePrimaryColor,
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
