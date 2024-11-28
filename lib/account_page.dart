import 'package:flutter/material.dart';
import 'package:splitwise/test_page.dart';
import 'account_settings.dart';

class AccountPage extends StatefulWidget {
  final Map<String, dynamic> people;
  const AccountPage({
    super.key,
    required this.people,
  });

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            print("Search icon pressed");
          },
          icon: const Icon(Icons.search, size: 25),
        ),
      ),

      body: Container(
        margin: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Account',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Settings',
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AccountSettings()));
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Icon(
                      Icons.person,
                      size: 40,
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Vatsal Gupta', style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        Text('tsrvatsal17@gmail.com', style: Theme.of(context).textTheme.bodySmall,),
                      ],
                    ),
                    const Spacer(),
                    const Icon(Icons.arrow_forward_ios, size: 20,)
                  ],
                ),
              ),
            ),

            const Divider(),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TestPage()));
                  });
                },
                child: Row(
                  children: [
                    const Icon(Icons.qr_code_2_sharp, size: 40,),
                    const SizedBox(width: 10), 
                    Text('Scan Code', style: Theme.of(context).textTheme.bodyLarge,), 
                    const Spacer(), 
                    const Icon(Icons.arrow_forward_ios, size: 20,)
                    ],
                    ),
              ),
            ),

            const Divider(),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TestPage()));
                  });
                },
                child: Row(
                  children: [
                    const Icon(Icons.diamond_sharp, size: 40, color: Colors.deepPurple,),
                    const SizedBox(width: 10), 
                    Text('Splitwise Pro', style: Theme.of(context).textTheme.bodyLarge,), 
                    const Spacer(), 
                    const Icon(Icons.arrow_forward_ios, size: 20,)
                    ],
                    ),
              ),
            ),

            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Preferences'),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TestPage()));
                  });
                },
                child: Row(
                  children: [
                    Text('Notifications', style: Theme.of(context).textTheme.bodyLarge,), 
                    const Spacer(), 
                    const Icon(Icons.arrow_forward_ios, size: 20,)
                    ],
                    ),
              ),
            ),

            const Divider(),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TestPage()));
                  });
                },
                child: Row(
                  children: [
                    Text('Security', style: Theme.of(context).textTheme.bodyLarge,), 
                    const Spacer(), 
                    const Icon(Icons.arrow_forward_ios, size: 20,)
                    ],
                    ),
              ),
            ),

            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
