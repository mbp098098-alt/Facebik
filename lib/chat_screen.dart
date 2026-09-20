import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Facebik Messenger', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0.5,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            icon: const Icon(Icons.video_call),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Search Chats
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Messenger',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
              ),
            ),
          ),
          
          // Chat List
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Stack(
                    children: [
                      const CircleAvatar(
                        radius: 26,
                        backgroundColor: Colors.blueAccent,
                        child: Icon(Icons.person, color: Colors.white, size: 30),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 14,
                          width: 14,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 2),
                          ),
                        ),
                      ),
                    ],
                  ),
                  title: Text(
                    'Friend Name ${index + 1}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text(
                    'Hey! How is the Facebik app going?',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: const Text(
                    '10:30 AM',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
