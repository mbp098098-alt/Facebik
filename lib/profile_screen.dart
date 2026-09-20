import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0.5,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Cover and Profile Photo Stack
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  color: Colors.blueGrey[200],
                  child: const Center(child: Text('Cover Photo Area')),
                ),
                Positioned(
                  top: 110,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 56,
                      backgroundColor: Colors.grey[400],
                      child: const Icon(Icons.person, size: 60, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),

            // User Info
            const Text(
              'User Name',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              '@username • Facebik Creator',
              style: TextStyle(color: Colors.grey),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
              child: Text(
                'Welcome to my Facebik profile!',
                textAlign: TextAlign.center,
              ),
            ),

            // Profile Action Buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.add),
                      label: const Text('Add to Story'),
                      style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF1877F2)),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.edit),
                      label: const Text('Edit Profile'),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(thickness: 1),

            // Stats / Info List
            const ListTile(
              leading: Icon(Icons.group),
              title: Text('Friends & Followers'),
              subtitle: Text('1.2K Friends • 500 Followers'),
            ),
            const ListTile(
              leading: Icon(Icons.monetization_on, color: Colors.green),
              title: Text('Creator Monetization Status'),
              subtitle: Text('Eligible for Payouts (bKash/Nagad/Bank)'),
            ),
          ],
        ),
      ),
    );
  }
}
