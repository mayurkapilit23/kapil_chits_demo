import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:kapil_chits_demo/core/app_colors.dart';
import 'package:kapil_chits_demo/screens/payment_screens/payment_pending_screen.dart';
import 'package:kapil_chits_demo/screens/payment_screens/payment_success_screen.dart';
import 'package:kapil_chits_demo/widgets/custom_button.dart';
import 'package:torn_ticket/torn_ticket.dart';

import '../../widgets/custom_info_card.dart';

class PaymentFailedScreen extends StatelessWidget {
  const PaymentFailedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentSuccessScreen(),
                    ),
                  );
                },
                child: Text('Success'),
              ),

              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentPendingScreen(),
                    ),
                  );
                },
                child: Text('Pending'),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: AppColors.paymentFailedBgColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.width * 1.7,
            width: MediaQuery.of(context).size.width * 1,
            child: TornTicket(
              borderRadius: 15.0,
              cutoutRadius: 10.0,
              cutoutHeight: 12.0,
              cutoutPosition: 0.49,
              bottomEndSpacing: 1.0,
              bottomArcSpacing: 10.0,
              elevation: 5.0,
              shadowColor: Colors.black,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                // margin: const EdgeInsets.all(1),
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  // horizontal: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                width: double.infinity,
                child: Column(
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const Icon(
                              Icons.cancel,
                              color: Colors.red,
                              size: 60,
                            ),
                            const SizedBox(height: 25),
                            const Text(
                              "Payment Failed",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 15),
                            const Text(
                              "Your payment for Kapil Chit fund has failed due to low balance",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              "Total Payment",
                              style: TextStyle(color: Colors.black54),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "₹50,000",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 20),
                            DottedLine(
                              dashColor: AppColors.dottedLineColor,
                              dashLength: 5,
                            ),

                            const SizedBox(height: 20),

                            // Payment Details
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Payment for',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 12),
                                CustomInfoCard(),
                              ],
                            ),
                            const SizedBox(height: 30),

                            // Done Button
                            CustomButton(onPressed: () {  },text: 'Done',),

                            const SizedBox(height: 15),

                            // Retry Payment Button
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Retry payment",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.buttonBgColor,
                                  // decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
