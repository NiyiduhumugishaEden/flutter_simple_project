import 'package:flutter/material.dart';

class EducationAndWorkPage2 extends StatefulWidget {
  @override
  _EducationAndWorkPageState createState() => _EducationAndWorkPageState();
}

class _EducationAndWorkPageState extends State<EducationAndWorkPage> {
  String selectedFromDate;
  String selectedFromMonth;
  String selectedFromYear;
  String selectedToDate;
  String selectedToMonth;
  String selectedToYear;
  TextEditingController cityTownController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  void dispose() {
    cityTownController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

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
            // From Date Selector
            Row(
              children: [
                Text('From:'),
                SizedBox(width: 8.0),
                DropdownButton<String>(
                  value: selectedFromDate,
                  hint: Text('Date'),
                  onChanged: (value) {
                    setState(() {
                      selectedFromDate = value;
                    });
                  },
                  // List of date options
                ),
                SizedBox(width: 8.0),
                DropdownButton<String>(
                  value: selectedFromMonth,
                  hint: Text('Month'),
                  onChanged: (value) {
                    setState(() {
                      selectedFromMonth = value;
                    });
                  },
                  // List of month options
                ),
                SizedBox(width: 8.0),
                DropdownButton<String>(
                  value: selectedFromYear,
                  hint: Text('Year'),
                  onChanged: (value) {
                    setState(() {
                      selectedFromYear = value;
                    });
                  },
                  // List of year options
                ),
              ],
            ),
            SizedBox(height: 16.0),
            // To Date Selector
            Row(
              children: [
                Text('To:'),
                SizedBox(width: 20.0),
                DropdownButton<String>(
                  value: selectedToDate,
                  hint: Text('Date'),
                  onChanged: (value) {
                    setState(() {
                      selectedToDate = value;
                    });
                  },
                  // List of date options
                ),
                SizedBox(width: 8.0),
                DropdownButton<String>(
                  value: selectedToMonth,
                  hint: Text('Month'),
                  onChanged: (value) {
                    setState(() {
                      selectedToMonth = value;
                    });
                  },
                  // List of month options
                ),
                SizedBox(width: 8.0),
                DropdownButton<String>(
                  value: selectedToYear,
                  hint: Text('Year'),
                  onChanged: (value) {
                    setState(() {
                      selectedToYear = value;
                    });
                  },
                  // List of year options
                ),
              ],
            ),
            SizedBox(height: 16.0),
            // City/Town Input Text Field
            TextFormField(
              controller: cityTownController,
              decoration: InputDecoration(
                hintText: 'City/Town',
              ),
              // Handle city/town text changes
            ),
            SizedBox(height: 16.0),
            // Description Field
            TextFormField(
              controller: descriptionController,
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
