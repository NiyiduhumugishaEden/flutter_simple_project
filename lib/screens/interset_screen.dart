import 'package:flutter/material.dart';

class MyInterestsPage extends StatefulWidget {
  @override
  _MyInterestsPageState createState() => _MyInterestsPageState();
}

class _MyInterestsPageState extends State<MyInterestsPage> {
  List<String> interests = [];
  String selectedInterest;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Interests'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Select Input
            DropdownButton<String>(
              value: selectedInterest,
              hint: Text('Select an interest'),
              onChanged: (value) {
                setState(() {
                  selectedInterest = value;
                });
              },
              items: [
                DropdownMenuItem(
                  value: 'Reading',
                  child: Text('Reading'),
                ),
                DropdownMenuItem(
                  value: 'Gym',
                  child: Text('Gym'),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            // Add Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
              onPressed: () {
                if (selectedInterest != null && !interests.contains(selectedInterest)) {
                  setState(() {
                    interests.add(selectedInterest);
                    selectedInterest = null;
                  });
                }
              },
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 16.0),
            // Interests Buttons
            Wrap(
              spacing: 8.0,
              children: interests.map((interest) {
                return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ),
                  onPressed: () {
                    // Handle interest button tap
                  },
                  child: Text(
                    interest,
                    style: TextStyle(color: Colors.white),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
