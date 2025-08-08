import 'package:flutter/material.dart';
import 'package:kapil_chits_demo/widgets/custom_expansionTile.dart';
import 'package:kapil_chits_demo/widgets/custom_searchbar.dart';

import '../../core/app_colors.dart';
import '../../widgets/custom_chip.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({super.key});

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  final TextEditingController _searchTextController = TextEditingController();

  String selectedChip = 'General';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.profilePrimaryColor,
      appBar: AppBar(
        centerTitle: true,

        backgroundColor: AppColors.profilePrimaryColor,
        // leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        title: Text(
          'FAQ',
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomSearchbar(searchTextController: _searchTextController),

                SizedBox(height: 20),
                //chips section
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // spacing: 10,
                    children: [
                      CustomChip(
                        text: 'General',
                        onTap: () {
                          setState(() {
                            selectedChip = 'General';
                          });
                        },
                        isSelected: selectedChip == 'General',
                      ),
                      CustomChip(
                        text: 'Account',
                        onTap: () {
                          setState(() {
                            selectedChip = 'Account';
                          });
                        },
                        isSelected: selectedChip == 'Account',
                      ),
                      CustomChip(
                        text: 'Service',
                        onTap: () {
                          setState(() {
                            selectedChip = 'Service';
                          });
                        },
                        isSelected: selectedChip == 'Service',
                      ),
                      CustomChip(
                        text: 'Loan',
                        onTap: () {
                          setState(() {
                            selectedChip = 'Loan';
                          });
                        },
                        isSelected: selectedChip == 'Loan',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),

                //dropdown question section
                ListView(
                  shrinkWrap: true,
                  children: [
                    CustomExpansionTile(
                      question: 'What is a Chit Fund?',
                      answer:
                          'A chit fund is a group savings scheme where members contribute money regularly and take turns receiving the lump sum.',
                    ),
                    CustomExpansionTile(
                      question: 'How does a Chit Fund work?',
                      answer:
                          'Members pool in money periodically, and the collected amount is given to one member through auction or lottery.',
                    ),
                    CustomExpansionTile(
                      question: 'Is a Chit Fund legal?',
                      answer:
                          'Yes, chit funds are legal and regulated under the Chit Funds Act, 1982.',
                    ),
                    CustomExpansionTile(
                      question: 'What are the benefits of joining a Chit Fund?',
                      answer:
                          'It helps members save money and access loans without needing formal credit.',
                    ),
                    CustomExpansionTile(
                      question: 'What are the risks in a Chit Fund?',
                      answer:
                          'The main risks are fraud and default, especially in unregistered or informal chit funds.',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
