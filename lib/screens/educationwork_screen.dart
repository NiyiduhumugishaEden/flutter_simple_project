import 'package:flutter/material.dart';

class EducationAndWorkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Education and Work'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Education Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
              onPressed: () {
                // Handle education button tap
              },
              child: Text(
                'Education',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 16.0),
            // Work Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () {
                // Handle work button tap
              },
              child: Text(
                'Work',
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(height: 16.0),
            // University Input Text Field
            TextFormField(
              decoration: InputDecoration(
                hintText: 'My University',
              ),
              // Handle university text changes
            ),
            SizedBox(height: 16.0),
            // Date Selector Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    // Handle "From" date button tap
                  },
                  child: Text(
                    'From',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    // Handle "To" date button tap
                  },
                  child: Text(
                    'To',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            // Description Field
            TextFormField(
              maxLines: 3,
              decoration: InputDecoration(
                hintText: 'Description',
              ),
              // Handle description changes
            ),
            SizedBox(height: 16.0),
            // Save Changes Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
              onPressed: () {
                // Handle save changes button tap
              },
              child: Text(
                'Save Changes',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
