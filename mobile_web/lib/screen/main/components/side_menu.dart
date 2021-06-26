import 'package:flutter/material.dart';
import 'package:reposnive/components/aniamated_circular_progress_indicator.dart';
import 'package:reposnive/constants.dart';
import 'package:reposnive/screen/main/components/skills.dart';

import 'areaa-_info_text.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
              child: SingleChildScrollView(
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                AreaInfoText(
                  title: 'Residence',
                  text: 'Brasil',
                ),
                AreaInfoText(
                  title: 'City',
                  text: 'São Paulo',
                ),
                AreaInfoText(
                  title: 'Age',
                  text: '40',
                ),
                Skills(),
                SizedBox(height: defaultPadding,),
                Coding(),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        )
      ],
    );
  }
}
