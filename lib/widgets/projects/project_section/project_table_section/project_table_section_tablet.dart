import 'package:flutter/material.dart';
import 'package:portifolio/pages/project_table.dart';
import 'package:portifolio/widgets/button_widgets/learn_more_button.dart';

class ProjectTableSectionTablet extends StatelessWidget {
  const ProjectTableSectionTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Projeto 1: Mesa Regulável",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium),
        ),
        Container(
          width: 350,
          height: 3,
          color: Theme.of(context).colorScheme.onPrimaryContainer,
        ),
        const SizedBox(
          height: 20,
        ),
        Stack(
          children: [
            Align(
              alignment: const Alignment(0, 0),
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Container(
                    color: Theme.of(context).colorScheme.primary,
                    width: MediaQuery.of(context).size.width - 220,
                    height: MediaQuery.of(context).size.width - 220),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 128, vertical: 32),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.black, width: 3)),
                child: Image.asset(
                  'assets/images/frontal.png',
                ),
              ),
            ),
          ],
        ),
        const LearMoreButton(route: ProjectTablePage()),
      ],
    );
  }
}
