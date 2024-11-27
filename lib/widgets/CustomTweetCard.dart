import 'package:flutter/material.dart';

class TweetCard extends StatelessWidget {
  final Map<String, dynamic> tweet;
  final VoidCallback onFavoriteToggle;

  const TweetCard({
    Key? key,
    required this.tweet,
    required this.onFavoriteToggle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      elevation: 5,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.grey.shade800,
                  child: const Icon(
                    Icons.person,
                    size: 24,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tweet["name"],
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "${tweet["username"]} · 1m",
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              tweet["content"],
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
            if (tweet["image"].isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Image.network(tweet["image"], width: double.infinity, fit: BoxFit.cover,),
              ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(Icons.chat_bubble_outline, color: Colors.grey, size: 20),
                    SizedBox(width: 6),
                    Text("95", style: TextStyle(color: Colors.grey)),
                  ],
                ),
                const Row(
                  children: [
                    Icon(Icons.repeat, color: Colors.grey, size: 20),
                    SizedBox(width: 6),
                    Text("1.3K", style: TextStyle(color: Colors.grey)),
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: onFavoriteToggle,
                      child: Icon(
                        tweet['isFavorite'] ? Icons.favorite : Icons.favorite_border,
                        color: tweet['isFavorite'] ? Colors.white : Colors.grey,
                        size: 20,
                      ),
                    ),
                    const SizedBox(width: 6),
                    const Text("1.3K", style: TextStyle(color: Colors.grey)),
                  ],
                ),
                const Row(
                  children: [
                    Icon(Icons.bar_chart, color: Colors.grey, size: 20),
                    SizedBox(width: 6),
                    Text("5.4M", style: TextStyle(color: Colors.grey)),
                  ],
                ),
                const Icon(Icons.share, color: Colors.grey, size: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
