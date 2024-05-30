import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactWidgetMobile extends StatelessWidget {
  const ContactWidgetMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            border: Border.all(color: Colors.black, width: 3)),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () => launchUrl(Uri.parse("https://github.com/Ilan-Ha")),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Image.network(
                      "https://cdn-icons-png.flaticon.com/512/25/25231.png",
                      width: 30,
                    ),
                  ),
                  Text(
                    "GitHub",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () => launchUrl(Uri.parse("mailto:Ilan.hame@gmail.com")),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Icon(
                      Icons.email_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  Text(
                    "Ilan.hame@gmail.com",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
