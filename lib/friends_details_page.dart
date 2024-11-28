import 'package:flutter/material.dart';
import 'people_list.dart';
import 'friends_settings_page.dart';

class FriendsDetailsPage extends StatefulWidget {
  final Map<String, dynamic> people;
  const FriendsDetailsPage({
    super.key,
    required this.people,
    });

  @override
  State<FriendsDetailsPage> createState() => _FriendsDetailsPageState();
}

class _FriendsDetailsPageState extends State<FriendsDetailsPage> {
  final List<String> chips = const [
    'Settle Up', 'Remind', 'Export', 'Charts', 'Convert to INR'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FriendsSettingsPage(people: widget.people),
                ),
              );
            },
          ),
        ],
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  widget.people['name'] as String,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  '${widget.people['mobileNumber']}',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(
                  widget.people['expense'] as String,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                SizedBox(
                  height: 70, // Set a height for the ListView
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder:  (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Chip(label: Text(chips[index])),
                      );
                    },
                  ),
                ),
                Text('${DateTime.now().month}/${DateTime.now().year}'),
                Row(
                  children: [
                    Text('''${DateTime.now().day}/${DateTime.now().month}'''),
                    const SizedBox(width: 15),
                    const Icon(Icons.food_bank_rounded, size: 36,),
                    const SizedBox(width: 6), 
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${widget.people['description']}',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        Text('${widget.people['netAmount']}',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Text(
                          widget.people['expense'] as String,
                          style: Theme.of(context).textTheme.titleSmall,)
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
