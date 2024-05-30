import 'package:flutter/material.dart';

class AppBarMobile extends StatelessWidget {
  const AppBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("oi"),
      actions: [
        Container(
          width: 70,
          height: 60,
          decoration: const BoxDecoration(
              border: Border(left: BorderSide(color: Colors.black, width: 3))),
          child: const Icon(Icons.menu),
        )
      ],
    );
  }
}
