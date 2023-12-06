import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String name;
  final String bio;
  final String contact;
  final String photoLink;

  ProfilePage({
    required this.name,
    required this.bio,
    required this.contact,
    required this.photoLink,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              photoLink,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            Text(
              'Name: $name',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'Bio: $bio',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Contact: $contact',
              style: TextStyle(fontSize: 16),
            ),
            // Add additional information as needed
          ],
        ),
      ),
    );
  }
}
