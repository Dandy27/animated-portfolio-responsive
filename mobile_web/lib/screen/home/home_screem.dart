import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:reposnive/constants.dart';
import 'package:reposnive/screen/main/main_screen.dart';

class HomeScreem extends StatelessWidget {
  HomeScreem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(children: [
      AspectRatio(
        aspectRatio: 3,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/bg.jpeg',
              fit: BoxFit.cover,
            ),
            Container(
              color: darkColor.withOpacity(0.66),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Discover my Amazing \nArt Space!",
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  DefaultTextStyle(
                    style: Theme.of(context).textTheme.subtitle1!,
                    child: Row(
                      children: [
                        FlutterCodedText(),
                        SizedBox(
                          width: defaultPadding / 2,
                        ),
                        Text('I build'),
                        AnimatedTextKit(animatedTexts: [
                          TyperAnimatedText('responsive web and mobile app.'),
                          TyperAnimatedText('complete e-Commerce app UI.'),
                          TyperAnimatedText('Chat app with and light theme'),
                        ]),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ]);
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: '<',
        children: [
          TextSpan(text: 'Flutter', style: TextStyle(color: primaryColor)),
          TextSpan(text: '>'),
        ],
      ),
    );
  }
}
