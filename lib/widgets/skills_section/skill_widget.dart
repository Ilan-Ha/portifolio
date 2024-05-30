import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SkillWidget extends StatelessWidget {
  const SkillWidget(
      {super.key,
      required this.givenSize,
      required this.color,
      required this.text,
      required this.image,
      required this.type});
  final double givenSize;
  final Color color;
  final String image;
  final String text;
  final TextStyle? type;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: givenSize,
          width: givenSize * 2,
          decoration: BoxDecoration(
              color: color, border: Border.all(color: Colors.black, width: 5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Image.network(
                  image,
                  alignment: Alignment.centerLeft,
                  height: givenSize / 2,
                  width: givenSize / 2,
                ),
              ),
              Text(
                text,
                textAlign: TextAlign.center,
                style: type,
              )
            ],
          ),
        )
      ],
    );
  }
}
