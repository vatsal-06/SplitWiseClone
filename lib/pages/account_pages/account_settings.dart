import 'package:flutter/material.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Account Settings',
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Full Name',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Text(
              'Vatsal Gupta',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 12),
            Text(
              'Email address',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Text(
              'tsrvatsal17@gmail.com',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 12),
            Text(
              'Phone number',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Text(
              '+91 1234567890',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 12),
            Text(
              'Password',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Text(
              '********',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 12),
            Text(
              'Time zone',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            // Add Time zone Selector here //////////////////////////////
            const SizedBox(height: 12),
            Text(
              'Default Currency',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            // Add Currency Selector here //////////////////////////////
            const SizedBox(height: 12),
            Text(
              'Language (for emails and notifications)',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            // Add Language Selector here //////////////////////////////
            const SizedBox(height: 12),
            Text(
              'Privacy Settings',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            // Add Privacy Settings Check Box here //////////////////////////////
            const SizedBox(height: 12),
            TextButton(onPressed: () {
              print('Save button pressed');
            }, style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.deepOrange), 
              padding: WidgetStateProperty.all(const EdgeInsets.all(12)),
              shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
              elevation: WidgetStateProperty.all(100),
              ),
            child: const Text('Save Changes', style: TextStyle(color: Colors.white),),
            ),
            const SizedBox(height: 25),
            Text('Advanced features', style: Theme.of(context).textTheme.titleMedium,),
            const SizedBox(height: 20),
            Text(
              'Block other users',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            TextButton(onPressed: () {
              print('Manage blocklist button pressed');
            }, style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.grey[300]), 
              padding: WidgetStateProperty.all(const EdgeInsets.all(12)),
              shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
              elevation: WidgetStateProperty.all(100),
              ),
            child: const Text('Manage your blocklist', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),),
            ),
            const SizedBox(height: 12),
            Text(
              'Your account',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            TextButton(onPressed: () {
              print('Delete account button pressed');
            }, style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.grey[300]), 
              padding: WidgetStateProperty.all(const EdgeInsets.all(12)),
              shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
              elevation: WidgetStateProperty.all(100),
              ),
            child: const Text('Delete your account', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),),
            ),
          ],
        ),
      ),
    );
  }
}
