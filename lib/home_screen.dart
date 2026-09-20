import 'package:flutter/material.dart';
import 'notification_screen.dart';
import 'chat_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: const Text(
          'Facebik',
          style: TextStyle(
            color: Color(0xFF1877F2),
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined, color: Colors.black),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NotificationScreen()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.chat_bubble_outline, color: Colors.black),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ChatScreen()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          // Story Section
          SizedBox(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                  width: 70,
                  decoration: BoxDecoration(
                    color: index == 0 ? Colors.grey[200] : Colors.blue[100],
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: const Color(0xFF1877F2), width: index == 0 ? 0 : 2),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        index == 0 ? Icons.add : Icons.person,
                        color: index == 0 ? Colors.black : Color(0xFF1877F2),
                        size: 30,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        index == 0 ? 'Add Story' : 'User $index',
                        style: const TextStyle(fontSize: 10),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const Divider(thickness: 4, color: Colors.black12),

          // Post Feed List
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 0),
                elevation: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundColor: Color(0xFF1877F2),
                        child: Icon(Icons.person, color: Colors.white),
                      ),
                      title: Text('User ${index + 1}', style: const TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: const Text('2 hours ago'),
                      trailing: const Icon(Icons.more_horiz),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Text('Enjoying the new features on Facebik! Build your own social network.'),
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.thumb_up_alt_outlined, color: Colors.grey),
                          label: const Text('Like', style: TextStyle(color: Colors.grey)),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.chat_bubble_outline, color: Colors.grey),
                          label: const Text('Comment', style: TextStyle(color: Colors.grey)),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.share_outlined, color: Colors.grey),
                          label: const Text('Share', style: TextStyle(color: Colors.grey)),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
