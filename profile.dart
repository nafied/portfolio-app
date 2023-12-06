import 'package:flutter/material.dart';
import 'profile_page.dart'; // Import the new profile page

class ProfileSection extends StatefulWidget {
  @override
  _ProfileSectionState createState() => _ProfileSectionState();
}

class _ProfileSectionState extends State<ProfileSection> {
  TextEditingController nameController = TextEditingController();
  TextEditingController bioController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController photoLinkController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Personal Information',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          TextField(
            controller: nameController,
            decoration: InputDecoration(labelText: 'Name'),
          ),
          TextField(
            controller: bioController,
            decoration: InputDecoration(labelText: 'Bio'),
          ),
          TextField(
            controller: contactController,
            decoration: InputDecoration(labelText: 'Contact'),
          ),
          TextField(
            controller: photoLinkController,
            decoration: InputDecoration(labelText: 'Profile Photo Link'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(
                    name: nameController.text,
                    bio: bioController.text,
                    contact: contactController.text,
                    photoLink: photoLinkController.text,
                  ),
                ),
              );
            },
            child: Text('Show Profile'),
          ),
        ],
      ),
    );
  }
}
