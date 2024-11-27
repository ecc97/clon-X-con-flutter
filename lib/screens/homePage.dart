import 'package:flutter/material.dart';
import '../widgets/CustomAppBar.dart';
import '../widgets/CustomTweetCard.dart';
import '../widgets/CustomFloatBtnActions.dart';
import '../widgets/CustomBottomNavBar.dart';
import '../data/tweets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: tweets.length,
              itemBuilder: (context, index) {
                return TweetCard(
                  tweet: tweets[index],
                  onFavoriteToggle: () {
                    setState(() {
                      tweets[index]['isFavorite'] = !tweets[index]['isFavorite'];
                    });
                  },
                );
              },
            ),
          ],
        ),
        floatingActionButton: const CustomFloatButton(),
        bottomNavigationBar: CustomBottomNavBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
