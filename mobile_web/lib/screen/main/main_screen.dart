import 'package:flutter/material.dart';
import 'package:reposnive/constants.dart';

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: SideMenu(),
              ),
              Expanded(
                  flex: 7,
                  child: Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [...children],
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
