import 'package:flutter/material.dart';
import 'about_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkMode = false;
  String profileImage = ''; // Default image URL or empty for no image

  void toggleDarkMode(bool value) {
    setState(() {
      isDarkMode = value;
    });
  }

  void changeProfilePicture() {
    // Add functionality to upload/change the profile picture
    // For example, using ImagePicker package for user to select an image
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Dark Mode'),
                Switch(
                  value: isDarkMode,
                  onChanged: toggleDarkMode,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: profileImage.isNotEmpty
                        ? NetworkImage(profileImage)
                        : null,
                    child: IconButton(
                      icon: const Icon(Icons.camera_alt),
                      onPressed: changeProfilePicture,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text('Your Name', style: TextStyle(fontSize: 18)),
                  const SizedBox(height: 5),
                  const Text('email@example.com', style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            const SizedBox(height: 30),
            ListTile(
              title: const Text('About'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
