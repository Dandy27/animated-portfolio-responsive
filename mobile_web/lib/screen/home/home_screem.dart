import 'package:flutter/material.dart';
import 'package:reposnive/screen/main/main_screen.dart';

import 'componets/home_banner.dart';

class HomeScreem extends StatelessWidget {
  HomeScreem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(children: [
      HomeBanner(),
    ]);
  }
}
