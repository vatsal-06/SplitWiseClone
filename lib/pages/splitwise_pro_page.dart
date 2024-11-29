import 'package:flutter/material.dart';

class SplitwiseProPage extends StatelessWidget {
  const SplitwiseProPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple[700],
          title: const Text(
            'Splitwise Pro',
            style: TextStyle(color: Colors.white, fontSize: 16),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 40.0, right: 40.0, top: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Upgrade to',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              const Row(
                children: [
                  Text(
                    'Splitwise',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'Pro',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Icon(
                    Icons.diamond,
                    color: Colors.purple,
                    size: 30,
                  )
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.attach_money,
                    color: Colors.black,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'Unlimited expenses',
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
              const Row(
                children: [
                  Icon(
                    Icons.public,
                    color: Colors.black,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'Currency conversion',
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
              const Row(
                children: [
                  Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.black,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'Attach images and PDFs',
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
              const Row(
                children: [
                  Icon(
                    Icons.document_scanner_outlined,
                    color: Colors.black,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'Receipt scanning',
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
              const Row(
                children: [
                  Icon(
                    Icons.category_outlined,
                    color: Colors.black,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'Itemization',
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
              const Row(
                children: [
                  Icon(
                    Icons.bar_chart_outlined,
                    color: Colors.black,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'Charts and graphs',
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
              const Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'Expense search',
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
              const Row(
                children: [
                  Icon(
                    Icons.pie_chart,
                    color: Colors.black,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'Save default splits',
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
              const Row(
                children: [
                  Icon(
                    Icons.star_purple500_sharp,
                    color: Colors.black,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'Plus more goodies to come!',
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
              const SizedBox(
                height: 25.0,
              ),
              ElevatedButton(
                onPressed: () {
                  print('₹999 / year');
                },
                style: ButtonStyle(
                  fixedSize: const WidgetStatePropertyAll(Size(300, 40)),
                  backgroundColor: WidgetStatePropertyAll(Colors.purple[600]),
                  elevation: const WidgetStatePropertyAll(5),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                child: const Text(
                  '₹999 / year',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text('                      Save ₹789 / year', style: TextStyle(color: Colors.purple[600]),),
              const SizedBox(
                height: 5.0,
              ),
              const Text('                                  or'),
              const SizedBox(
                height: 5.0,
              ),
              ElevatedButton(
                onPressed: () {
                  print('₹149 / month');
                },
                style: ButtonStyle(
                  fixedSize: const WidgetStatePropertyAll(Size(300, 40)),
                  backgroundColor: WidgetStatePropertyAll(Colors.purple[600]),
                  elevation: const WidgetStatePropertyAll(5),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                child: const Text(
                  '₹149 / month',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              ElevatedButton(
                onPressed: () {
                  print('Restore purchases');
                },
                style: ButtonStyle(
                  fixedSize: const WidgetStatePropertyAll(Size(300, 40)),
                  backgroundColor: WidgetStatePropertyAll(Colors.grey[300]),
                  elevation: const WidgetStatePropertyAll(5),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                child: const Text(
                  'Restore purchases',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              const Text(
                'Recurring billing, cancel anytime. Your subscription will be charged to your iTunes account, and auto-renews unless disabled a day before the renewal date. You can manage your subscription by going to iTunes Account Settings. Terms of Service • Privacy Policy',
                style: TextStyle(fontSize: 11),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
