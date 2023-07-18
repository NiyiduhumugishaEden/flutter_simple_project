import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: Column(
        children: [
          // Change Cover Page
          ListTile(
            leading: Icon(Icons.photo),
            title: Text('Change Cover Page'),
            onTap: () {
              // Handle cover page change
            },
          ),
          Divider(),

          // Basic Information
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Basic Information'),
            onTap: () {
              // Handle basic information edit
            },
          ),
          Divider(),

          // My Interest
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('My Interest'),
            onTap: () {
              // Handle interest edit
            },
          ),
          Divider(),

          // Education and Work
          ListTile(
            leading: Icon(Icons.school),
            title: Text('Education and Work'),
            onTap: () {
              // Handle education and work edit
            },
          ),
          Divider(),

          // My Profile
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('My Profile'),
            onTap: () {
              // Handle profile edit
            },
          ),
          Divider(),

          // My Friends
          ListTile(
            leading: Icon(Icons.group),
            title: Text('My Friends'),
            onTap: () {
              // Handle friends edit
            },
          ),
          Divider(),

          // Security Settings
          ListTile(
            leading: Icon(Icons.security),
            title: Text('Security Settings'),
            onTap: () {
              // Handle security settings edit
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}
