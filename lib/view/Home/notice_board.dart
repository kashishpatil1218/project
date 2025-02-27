import 'package:flutter/material.dart';

class NoticesBoardScreen extends StatelessWidget {
  final List<Map<String, String>> notices = [
    {'title': 'Test exam', 'subtitle': 'Test examination held on 3 March', 'image': 'assets/test_exam.png'},
    {'title': 'Annual sports', 'subtitle': 'Annual sports arrange on 13 April', 'image': 'assets/annual_sports.png'},
    {'title': 'Picnic', 'subtitle': 'Students organize an exciting picnic', 'image': 'assets/picnic.png'},
    {'title': 'Foundation day', 'subtitle': 'Our school celebrates its foundation day', 'image': 'assets/foundation_day.png'},
    {'title': 'SparkFest', 'subtitle': 'Creating Memories Together', 'image': 'assets/sparkfest.png'},
    {'title': 'ChromaNight', 'subtitle': 'Unleashing Fun and Friendship', 'image': 'assets/chromanight.png'},
    {'title': 'EchoLive', 'subtitle': 'One Stage, Endless Stories', 'image': 'assets/echolive.png'},
    {'title': 'Radiance', 'subtitle': 'Elevate Every Moment', 'image': 'assets/radiance.png'},
    {'title': 'Momentum', 'subtitle': 'Unite for the Ultimate Experience', 'image': 'assets/momentum.png'},
    {'title': 'Summit Fest', 'subtitle': 'Reach the Peak of Celebration', 'image': 'assets/summit_fest.png'},
    {'title': 'Lumea', 'subtitle': 'Our school celebrates its foundation day', 'image': 'assets/lumea.png'},
    {'title': 'Zenith Nights', 'subtitle': 'Celebrate Life, One Step at a Time', 'image': 'assets/zenith_nights.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notices Board'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: notices.length,
              itemBuilder: (context, index) {
                final notice = notices[index];
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                    leading: Image.asset(notice['image']!, width: 40, height: 40, fit: BoxFit.cover),
                    title: Text(notice['title']!, style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(notice['subtitle']!),
                    trailing: Text(
                      (index + 1).toString().padLeft(2, '0'),
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Cancel'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Done'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
