import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'theme_widgets_body.dart';
import 'theme_widgets_colors_body.dart';

/// flutter自带主题(Light)
class ThemeDemoLightPage extends StatefulWidget {
  @override
  _ThemeDemoLightPageState createState() => _ThemeDemoLightPageState();
}

class _ThemeDemoLightPageState extends State<ThemeDemoLightPage> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('主题 (Light)'),
          centerTitle: true,
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.color_lens),
              onPressed: () {
                Navigator.push<dynamic>(
                  context,
                  MaterialPageRoute<dynamic>(
                    builder: (BuildContext context) => ColorsLightPage(),
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

class ColorsLightPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('主题颜色值 (Light)'),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: WidgetsThemeColorsBody(),
      ),
    );
  }
}
