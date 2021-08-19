import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'theme_widgets_body.dart';
import 'theme_widgets_colors_body.dart';

/// flutter自带主题(Dark)
class ThemeDemoDarkPage extends StatefulWidget {
  @override
  _ThemeDemoDarkPageState createState() => _ThemeDemoDarkPageState();
}

class _ThemeDemoDarkPageState extends State<ThemeDemoDarkPage> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('主题 (Dark)'),
          centerTitle: true,
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.color_lens),
              onPressed: () {
                Navigator.push<dynamic>(
                  context,
                  MaterialPageRoute<dynamic>(
                    builder: (BuildContext context) => ColorsDarkPage(),
                  ),
                );
              },
            )
          ],
        ),
        body: WidgetsBody(),
      ),
    );
  }
}

class ColorsDarkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('主题颜色值 (Dark)'),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: WidgetsThemeColorsBody(),
      ),
    );
  }
}
