import 'package:clone_x/screens/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const UserScreen()));
        }, 
        icon: const Icon(Icons.account_circle),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {},
        ),
      ],
      flexibleSpace: Container(
        height: 50,
        alignment: Alignment.center,
        child: const FaIcon(
          FontAwesomeIcons.xTwitter,
          color: Colors.white,
          size: 30,
        ),
      ),
      bottom: const TabBar(
        indicatorColor: Colors.blue,
        labelColor: Colors.white,
        unselectedLabelColor: Colors.grey,
        tabs: [
          Tab(text: 'Para ti'),
          Tab(text: 'Siguiendo'),
          Tab(text: 'Actividad'),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
