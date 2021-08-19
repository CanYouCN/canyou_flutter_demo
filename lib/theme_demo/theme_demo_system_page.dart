import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'theme_widgets_body.dart';
import 'theme_widgets_colors_body.dart';

/// 使用自定义主题
class ThemeDemoSystemPage extends StatefulWidget {
  @override
  _ThemeDemoSystemPageState createState() => _ThemeDemoSystemPageState();
}

class _ThemeDemoSystemPageState extends State<ThemeDemoSystemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('主题 (System)'),
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.color_lens),
            onPressed: () {
              Navigator.push<dynamic>(
                context,
                MaterialPageRoute<dynamic>(
                  builder: (BuildContext context) => ColorsSystemPage(),
                ),
              );
            },
          ),
          // RawMaterialButton(
          //   child: const Icon(Icons.color_lens),
          //   shape: const CircleBorder(),
          //   onPressed: () {
          //     Navigator.push<dynamic>(
          //       context,
          //       MaterialPageRoute<dynamic>(
          //         builder: (BuildContext context) => ColorsSystemPage(),
          //       ),
          //     );
          //   },
          // ),
        ],
      ),
      body: WidgetsBody(),
    );
  }
}

class ColorsSystemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('主题颜色值 (System)'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: WidgetsThemeColorsBody(),
    );
  }
}
