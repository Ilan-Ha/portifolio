import 'package:flutter/material.dart';
import 'package:portifolio/pages/project_table.dart';
import 'package:portifolio/widgets/button_widgets/learn_more_button.dart';

class ProjectTableSectionWeb extends StatelessWidget {
  const ProjectTableSectionWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: Colors.black, width: 3)),
            child: Image.asset(
              'assets/images/frontal.png',
              width: MediaQuery.of(context).size.width / 2,
            ),
          ),
          Column(
            children: [
              Text("Projeto 1: Mesa Regulável",
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: Theme.of(context).textTheme.headlineLarge),
              Container(
                width: 450,
                height: 3,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: LearMoreButton(route: ProjectTablePage()),
              ),
            ],
          )
        ],
      ),
    );
  }
}
