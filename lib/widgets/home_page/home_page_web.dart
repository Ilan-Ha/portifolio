import 'package:flutter/material.dart';
import 'package:portifolio/widgets/about_section/about_section_web.dart';
import 'package:portifolio/widgets/contact_widget/contact_widget.dart';
import 'package:portifolio/widgets/projects/project_section/project_table_section/project_table_section_web.dart';
import 'package:portifolio/widgets/skills_section/skill_widget.dart';

class HomePageWeb extends StatelessWidget {
  const HomePageWeb({super.key});

  @override
  Widget build(BuildContext context) {
    double givenSize = 300;
    return ListView(
      children: [
        const AboutSectionWeb(),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SkillWidget(
              givenSize: givenSize,
              color: Theme.of(context).colorScheme.primary,
              text: "Flutter",
              image:
                  "https://static-00.iconduck.com/assets.00/flutter-icon-1651x2048-ojswpayr.png",
              type: Theme.of(context).textTheme.displayLarge,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: SkillWidget(
                givenSize: givenSize,
                color: Theme.of(context).colorScheme.secondary,
                text: "C",
                image:
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/C_Programming_Language.svg/1853px-C_Programming_Language.svg.png",
                type: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            SkillWidget(
              givenSize: givenSize,
              color: Theme.of(context).colorScheme.primary,
              text: "Python",
              image:
                  "https://images.vexels.com/media/users/3/166477/isolated/lists/9bb722f0e85ddbc1ce0f064534fd2311-python-programming-language-icon.png",
              type: Theme.of(context).textTheme.displayLarge,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: SkillWidget(
                givenSize: givenSize,
                color: Theme.of(context).colorScheme.secondary,
                text: "Figma",
                image:
                    "https://cdn-icons-png.flaticon.com/512/5968/5968705.png",
                type: Theme.of(context).textTheme.displayLarge,
              ),
            ),
          ],
        ),
        const ProjectTableSectionWeb(),
        const ContactWidget()
      ],
    );
  }
}
