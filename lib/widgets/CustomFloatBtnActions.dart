import 'package:flutter/material.dart';

class CustomFloatButton extends StatelessWidget {
  const CustomFloatButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.blueAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Icon(
        Icons.add,
        size: 30,
        color: Colors.white,
      ),
    );
  }
}
