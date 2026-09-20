import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0.5,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              backgroundColor: Color(0xFF1877F2),
              child: Icon(Icons.notifications, color: Colors.white),
            ),
            title: Text(
              'User ${index + 1} liked your post on Facebik.',
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: const Text('2 hours ago'),
            trailing: const Icon(Icons.more_horiz, color: Colors.grey),
            tileColor: index == 0 ? Colors.blue.withOpacity(0.05) : Colors.transparent,
            onTap: () {},
          );
        },
      ),
    );
  }
}
