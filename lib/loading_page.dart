import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Lottie.asset(
              'assets/animations/1.json',
              // height: MediaQuery.of(context).size.height,
              // repeat: true,
              // // reverse: true,
              width: 500,
              fit: BoxFit.cover,
            ),
            AnimatedTextKit(
              animatedTexts: [
                ScaleAnimatedText(
                  'hii',
                  textStyle: TextStyle(
                    fontSize: 37.0,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..shader = LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 255, 194, 220),
                          const Color.fromARGB(255, 126, 179, 115),
                        ],
                      ).createShader(Rect.fromLTWH(0, 0, 200, 70)),
                  ),
                ),
                ScaleAnimatedText(
                  'welcome to the',
                  textStyle: TextStyle(
                    fontSize: 37.0,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..shader = LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 87, 174, 255),
                          const Color.fromARGB(255, 255, 79, 79),
                        ],
                      ).createShader(Rect.fromLTWH(0, 0, 200, 70)),
                  ),
                ),
                ScaleAnimatedText(
                  'Flutter Pro Series',
                  textStyle: TextStyle(
                    fontSize: 37.0,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..shader = LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 87, 174, 255),
                          const Color.fromARGB(255, 0, 183, 255),
                        ],
                      ).createShader(Rect.fromLTWH(0, 0, 200, 70)),
                  ),
                ),
              ],
              totalRepeatCount: 10,
              pause: const Duration(milliseconds: 1000),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
          ],
        ),
      ),
    );
  }
}
