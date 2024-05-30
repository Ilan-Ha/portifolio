import 'package:flutter/material.dart';

class AppBarWeb extends StatelessWidget {
  const AppBarWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(
        width: 25,
        decoration: const BoxDecoration(
            border: Border(right: BorderSide(color: Colors.black, width: 3))),
        child: const Icon(Icons.menu),
      ),
      title: const Text("ola"),
    );
  }
}
