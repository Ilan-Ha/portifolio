import 'package:flutter/material.dart';
import 'package:portifolio/pages/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        appBarTheme: const AppBarTheme(
            elevation: 0,
            shape: ContinuousRectangleBorder(
                side: BorderSide(
              color: Colors.black,
              strokeAlign: BorderSide.strokeAlignInside,
              width: 3,
            )),
            centerTitle: true,
            backgroundColor: Color(0xff444444),
            titleTextStyle: TextStyle(color: Colors.white),
            iconTheme: IconThemeData(color: Colors.white),
            actionsIconTheme: IconThemeData(color: Colors.white),
            toolbarTextStyle: TextStyle(color: Colors.white)),
        colorScheme: const ColorScheme.dark(
            background: Color(0xff2B272E),
            primaryContainer: Color(0xff444444),
            onPrimaryContainer: Color(0xffffffff),
            primary: Color(0xff675F70),
            secondary: Color(0xff5C5D73)),
        textTheme: const TextTheme(
            titleLarge: TextStyle(
                fontSize: 80, fontWeight: FontWeight.bold, color: Colors.white),
            bodyLarge: TextStyle(fontSize: 60, color: Colors.white),
            titleMedium: TextStyle(
                fontSize: 70, fontWeight: FontWeight.bold, color: Colors.white),
            bodyMedium: TextStyle(fontSize: 55, color: Colors.white),
            titleSmall: TextStyle(
                fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white),
            bodySmall: TextStyle(fontSize: 50, color: Colors.white),
            headlineLarge: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
            headlineMedium: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
            headlineSmall: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
            displaySmall: TextStyle(fontSize: 20, color: Colors.white),
            displayLarge: TextStyle(fontSize: 40, color: Colors.white)),
      ),
    );
  }
}
