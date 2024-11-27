import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('@user1'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 200,
                color: Colors.blueAccent,
              ),
              Positioned(
                bottom: -40,
                left: 16,
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage('https://cdn-icons-png.freepik.com/512/6858/6858578.png'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('User 1', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text('@user1', style: TextStyle(color: Colors.grey)),
                SizedBox(height: 16),
                Text('Desarrollador apasionado por Flutter y el desarrollo móvil.',
                    style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Tweets: 120', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Seguidores: 500', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Siguiendo: 180', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
