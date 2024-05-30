import 'package:flutter/material.dart';
import 'package:portifolio/breakpoints.dart';

import 'package:portifolio/widgets/projects/projects_page/project_table/project_table_mobile.dart';
import 'package:portifolio/widgets/projects/projects_page/project_table/project_table_tablet.dart';
import 'package:portifolio/widgets/projects/projects_page/project_table/project_table_web.dart';

class ProjectTablePage extends StatefulWidget {
  const ProjectTablePage({super.key});

  @override
  State<ProjectTablePage> createState() => _HomePageState();
}

class _HomePageState extends State<ProjectTablePage> {
  ThemeMode theme = ThemeMode.dark;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: constraints.maxWidth > breakpointTablet
              ? const ProjectTableWeb()
              : constraints.maxWidth > breakpointMobile
                  ? const ProjectTableTablet()
                  : const ProjectTableMobile(),
        );
      },
    );
  }
}
