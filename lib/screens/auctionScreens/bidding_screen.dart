import 'package:flutter/material.dart';
import 'package:kapil_chits_demo/core/app_colors.dart';

class BiddingScreen extends StatelessWidget {
  const BiddingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            //Header Section
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              decoration: const BoxDecoration(
                color: Color(0xFF0A2D8C), // Dark Blue
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Back button + Group ID
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back, color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Group- MPE003B-16 👬",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Ticket Info Row
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildHeaderInfo("Ticket No.", "11"),
                        _buildHeaderInfo("Current Bid", "₹50,000"),
                        _buildHeaderInfo("Auction ends", "00:09:49"),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            //Bid History
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: const [
                  BidCard(
                    ticketNo: "11",
                    amount: "₹50,000",
                    time: "12:27:23 PM",
                    isOwnBid: false,
                  ),
                  SizedBox(height: 12),
                  BidCard(
                    ticketNo: "11",
                    amount: "₹55,100",
                    time: "12:27:23 PM",
                    isOwnBid: true,
                  ),
                ],
              ),
            ),

            //Bidding Section
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Enter Bidding Amount',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _buildBidAmount(
                        text: 'Minimum Bid',
                        amount: '₹20,000',
                        icon: Icons.circle,
                        color: Colors.green,
                      ),
                      SizedBox(width: 20),

                      _buildBidAmount(
                        text: 'Maximum Bid',
                        amount: '₹60,000',
                        icon: Icons.circle,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "Bidding amount",
                            filled: true,
                            fillColor: Colors.grey.shade100,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0A2D8C),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Bid",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //reusable textField component
  Widget _buildBidAmount({
    required String text,
    required String amount,
    required IconData icon,
    required Color color,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(icon, color: color, size: 30),
        SizedBox(width: 10),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(fontSize: 14, color: AppColors.lightGrey),
            ),
            Text(
              amount,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ],
    );
  }

  // Reusable Header Info
  Widget _buildHeaderInfo(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(color: AppColors.lightGrey, fontSize: 14),
        ),
        const SizedBox(height: 6),
        Text(
          value,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

//Bid Card Widget
class BidCard extends StatelessWidget {
  final String ticketNo;
  final String amount;
  final String time;
  final bool isOwnBid;

  const BidCard({
    super.key,
    required this.ticketNo,
    required this.amount,
    required this.time,
    required this.isOwnBid,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Align(
      alignment: isOwnBid ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(12),
        // constraints: const BoxConstraints(maxWidth: 240),
        width: width * 0.6,
        decoration: BoxDecoration(
          color: isOwnBid ? const Color(0xFF0A2D8C) : Colors.white,
          // borderRadius: BorderRadius.circular(12),
          borderRadius: isOwnBid
              ? BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(0),
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                )
              : BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(12),
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
          boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4)],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ticket No. $ticketNo",
              style: TextStyle(
                fontSize: 12,
                color: isOwnBid ? Colors.white : Colors.black87,
              ),
            ),
            const SizedBox(height: 4),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  amount,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: isOwnBid ? Colors.white : Colors.green,
                  ),
                ),

                Text(
                  time,
                  style: TextStyle(
                    fontSize: 12,
                    color: isOwnBid ? Colors.white70 : Colors.black54,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
