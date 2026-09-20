import 'package:flutter/material.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              // Video Background Placeholder
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.grey[900],
                child: Center(
                  child: Text(
                    'Reels Video ${index + 1}\n(Swipe up for next)',
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white70, fontSize: 18),
                  ),
                ),
              ),

              // Right Side Actions (Like, Comment, Share)
              Positioned(
                right: 15,
                bottom: 80,
                child: Column(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.favorite, color: Colors.white, size: 32),
                      onPressed: () {},
                    ),
                    const Text('12.5K', style: TextStyle(color: Colors.white, fontSize: 12)),
                    const SizedBox(height: 20),
                    IconButton(
                      icon: const Icon(Icons.comment, color: Colors.white, size: 30),
                      onPressed: () {},
                    ),
                    const Text('450', style: TextStyle(color: Colors.white, fontSize: 12)),
                    const SizedBox(height: 20),
                    IconButton(
                      icon: const Icon(Icons.share, color: Colors.white, size: 30),
                      onPressed: () {},
                    ),
                    const Text('Share', style: TextStyle(color: Colors.white, fontSize: 12)),
                  ],
                ),
              ),

              // Bottom Creator Info & Caption
              Positioned(
                left: 15,
                bottom: 40,
                right: 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 18,
                          backgroundColor: Color(0xFF1877F2),
                          child: Icon(Icons.person, color: Colors.white),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Creator Name',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const SizedBox(width: 10),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Colors.white),
                            minimumSize: const Size(60, 30),
                          ),
                          const Text('Follow', style: TextStyle(color: Colors.white, fontSize: 12)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'This is a sample video caption for Facebik Reels! #Facebik #Reels #Bangladesh',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
