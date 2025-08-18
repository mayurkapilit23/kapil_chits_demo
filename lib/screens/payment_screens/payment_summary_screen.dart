import 'package:flutter/material.dart';
import 'package:kapil_chits_demo/widgets/custom_pay_via_tile.dart';

import '../../core/app_colors.dart';
import '../../widgets/custom_payment_method_card.dart';

class PaymentSummaryScreen extends StatelessWidget {
  const PaymentSummaryScreen({super.key});

  final googlePayImage = 'assets/gpay.svg';
  final phonePeImage = 'assets/phonepe.svg';
  final paytmImage = 'assets/paytm.svg';
  final moreImage = 'assets/more.svg';
  final debitCardImage = 'assets/debitCard.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.profilePrimaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.profilePrimaryColor,
        centerTitle: true,
        title: Text(
          'Payment summary',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              //payment to  details container
              Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                height: 114,
                decoration: BoxDecoration(
                  color: AppColors.paymentPrimaryColor,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '₹ 20,000',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Flexible(
                      child: Text(
                        'Chit by: Kapil Chitfunds Pvt. Ltd.',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              //payment method container
              Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,

                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                  color: AppColors.paymentPrimaryColor,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Text('Pay via UPI apps'),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        spacing: 10,
                        children: [
                          CustomPaymentMethodCard(
                            onTap: () {},
                            image: googlePayImage,
                            text: 'Google Pay',
                          ),
                          CustomPaymentMethodCard(
                            onTap: () {},
                            image: phonePeImage,
                            text: 'PhonePe',
                          ),
                          CustomPaymentMethodCard(
                            onTap: () {},
                            image: paytmImage,
                            text: 'Paytm',
                          ),
                          CustomPaymentMethodCard(
                            onTap: () {},
                            image: moreImage,
                            text: 'More',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              CustomPayViaTile(
                onTap: () {},
                title: 'Pay via Debit Card',
                subTitle: 'andrew.ainsley@yourdomain.com',
                image: debitCardImage,
              ),
              SizedBox(height: 20),
              CustomPayViaTile(
                onTap: () {},
                title: 'Pay via Netbanking',
                subTitle: 'andrew.ainsley@yourdomain.com',
                image: debitCardImage,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
