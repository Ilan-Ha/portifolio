import 'package:flutter/material.dart';

class LearMoreButton extends StatelessWidget {
  const LearMoreButton({super.key, required this.route});
  final Widget route;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => route,
              ));
        },
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
                Theme.of(context).colorScheme.secondary)),
        child: Text(
          "Saiba Mais",
          style: Theme.of(context).textTheme.displaySmall,
        ));
  }
}
