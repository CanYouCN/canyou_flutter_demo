import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'theme_demo_dark_page.dart';
import 'theme_demo_light_page.dart';
import 'theme_demo_system_page.dart';

class ThemeDemoPage extends StatefulWidget {
  @override
  _ThemeDemoPageState createState() => _ThemeDemoPageState();
}

class _ThemeDemoPageState extends State<ThemeDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('主题 demo'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Container(
            width: 48,
            height: 48,
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            alignment: Alignment.center,
            child: const CircleAvatar(),
          ),
          title: const Text('主题(Light)'),
          trailing: const Icon(CupertinoIcons.forward),
          dense: false,
          onTap: () {
            Navigator.push<dynamic>(
              context,
              MaterialPageRoute<dynamic>(
                builder: (BuildContext context) => ThemeDemoLightPage(),
              ),
            );
          },
        ),
        const Divider(height: 0.0),
        ListTile(
          leading: Container(
            width: 48,
            height: 48,
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            alignment: Alignment.center,
            child: const CircleAvatar(),
          ),
          title: const Text('主题(Dark)'),
          trailing: const Icon(CupertinoIcons.forward),
          dense: false,
          onTap: () {
            Navigator.push<dynamic>(
              context,
              MaterialPageRoute<dynamic>(
                builder: (BuildContext context) => ThemeDemoDarkPage(),
              ),
            );
          },
        ),
        const Divider(height: 0.0),
        ListTile(
          leading: Container(
            width: 48,
            height: 48,
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            alignment: Alignment.center,
            child: const CircleAvatar(),
          ),
          title: const Text('主题(System)'),
          trailing: const Icon(CupertinoIcons.forward),
          dense: false,
          onTap: () {
            Navigator.push<dynamic>(
              context,
              MaterialPageRoute<dynamic>(
                builder: (BuildContext context) => ThemeDemoSystemPage(),
              ),
            );
          },
        ),
        const Divider(height: 0.0),
      ],
    );
  }
}
