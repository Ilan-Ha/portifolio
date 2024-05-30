import 'package:flutter/material.dart';

class AboutSectionWeb extends StatelessWidget {
  const AboutSectionWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 168),
          child: Align(
            alignment: const Alignment(-0.4, 0),
            child: Container(
              height: 400,
              width: MediaQuery.of(context).size.width - 200,
              color: Colors.black,
            ),
          ),
        ),
        Align(
          alignment: const Alignment(0, 0),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 128),
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      border: Border.all(color: Colors.black, width: 3)),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Wrap(
                            children: [
                              Text(
                                "ILAN HAMEIRY",
                                style: Theme.of(context).textTheme.titleLarge,
                                maxLines: 2,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Container(
                            width: double.infinity,
                            height: 3,
                            color: Theme.of(context)
                                .colorScheme
                                .onPrimaryContainer,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 32, horizontal: 32),
                          child: Wrap(
                            children: [
                              Text(
                                "Estudante de Engenharia da Computação",
                                textAlign: TextAlign.left,
                                style: Theme.of(context).textTheme.bodyLarge,
                                maxLines: 2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
