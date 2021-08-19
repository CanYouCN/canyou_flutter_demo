import 'package:flutter/material.dart';

class WidgetsBody extends StatefulWidget {
  @override
  _WidgetsBodyState createState() => _WidgetsBodyState();
}

class _WidgetsBodyState extends State<WidgetsBody> {
  List<bool> isSelected = <bool>[false, false, false];

  @override
  Widget build(BuildContext context) {
    final Map<String, TextStyle> listThemeText = _themeTextList(context);
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        children: <Widget>[
          Container(
            height: 40.0,
            alignment: Alignment.center,
            child: const Text(
              '文本样式',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          const Divider(height: 30.0, thickness: 3.0),
          ...listThemeText.keys.map((String key) {
            return _buildItemStyle(key, listThemeText[key]!);
          }).toList(),
          const Divider(height: 30.0, thickness: 3.0),
          Container(
            height: 40.0,
            alignment: Alignment.center,
            child: const Text(
              '常用组件',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          AppBar(
            title: const Text('导航'),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {},
              )
            ],
          ),
          const Divider(height: 30.0, thickness: 3.0),
          ToggleButtons(
            children: const <Icon>[
              Icon(Icons.ac_unit),
              Icon(Icons.call),
              Icon(Icons.cake),
            ],
            onPressed: (int index) {
              setState(() {
                isSelected[index] = !isSelected[index];
              });
            },
            isSelected: isSelected,
          ),
          const Divider(height: 30.0, thickness: 3.0),
          Checkbox(value: true, onChanged: (bool? val) {}),
          const Checkbox(value: true, onChanged: null),
          Checkbox(value: false, onChanged: (bool? val) {}),
          const Checkbox(value: false, onChanged: null),
          CheckboxListTile(
              title: const Text('CheckBox'),
              value: true,
              onChanged: (bool? val) {}),
          CheckboxListTile(
              title: const Text('CheckBox'),
              value: false,
              onChanged: (bool? val) {}),
          Radio<bool>(value: true, groupValue: true, onChanged: (bool? val) {}),
          const Radio<bool>(value: true, groupValue: true, onChanged: null),
          Radio<bool>(
              value: false, groupValue: true, onChanged: (bool? val) {}),
          const Radio<bool>(value: false, groupValue: true, onChanged: null),
          RadioListTile<bool>(
            title: const Text('Radio'),
            value: false,
            groupValue: true,
            onChanged: (bool? val) {},
          ),
          RadioListTile<bool>(
            title: const Text('Radio'),
            value: true,
            groupValue: true,
            onChanged: (bool? val) {},
          ),
          SwitchListTile(
              title: const Text('lights'),
              value: true,
              onChanged: (bool val) {}),
          SwitchListTile(
              title: const Text('lights'),
              value: false,
              onChanged: (bool val) {}),
          const SwitchListTile(
              title: Text('lights'), value: true, onChanged: null),
          const Divider(height: 30.0, thickness: 3.0),
          Container(
            height: 40.0,
            alignment: Alignment.center,
            child: const Text(
              '常用组件(MaterialButton)',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: <Widget>[
              MaterialButton(child: const Text('按钮1'), onPressed: () {}),
              MaterialButton(child: const Text('按钮2'), onPressed: () {}),
              MaterialButton(
                shape: const StadiumBorder(),
                child: const Text('按钮3'),
                onPressed: () {},
              ),
              MaterialButton(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(0.0),
                  ),
                  // side: BorderSide(),
                ),
                child: const Text('按钮3'),
                onPressed: () {},
              ),
            ],
          ),
          const Divider(height: 30.0, thickness: 3.0),
          Container(
            height: 40.0,
            alignment: Alignment.center,
            child: const Text(
              '常用组件(FlatButton)',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: <Widget>[
              FlatButton(child: const Text('按钮1'), onPressed: () {}),
              const FlatButton(child: Text('按钮2'), onPressed: null),
              FlatButton.icon(
                icon: const Icon(Icons.add),
                label: const Text('按钮3'),
                onPressed: () {},
              ),
              FlatButton.icon(
                icon: const Icon(Icons.add),
                label: const Text('按钮4'),
                onPressed: null,
              ),
              FlatButton.icon(
                icon: const Icon(Icons.add),
                label: const Text('按钮5'),
                shape: Border.all(width: 1.0),
                onPressed: () {},
              ),
              FlatButton.icon(
                icon: const Icon(Icons.add),
                label: const Text('按钮6'),
                shape: Border.all(width: 1.0),
                onPressed: null,
              ),
              FlatButton.icon(
                icon: const Icon(Icons.add),
                label: const Text('按钮7'),
                shape: const StadiumBorder(side: BorderSide()),
                // 抗锯齿
                clipBehavior: Clip.antiAlias,
                onPressed: () {},
              ),
              FlatButton.icon(
                icon: const Icon(Icons.add),
                label: const Text('按钮8'),
                shape: const StadiumBorder(),
                // BeveledRectangleBorder 顶端斜角
                // BoxBorder
                // CircleBorder 圆形
                // InputBorder
                // RoundedRectangleBorder 顶端圆角
                // StadiumBorder 体育场型
                onPressed: () {},
              ),
              FlatButton.icon(
                icon: const Icon(Icons.add),
                label: const Text('按钮9'),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                  side: BorderSide(),
                ),
                onPressed: () {},
              ),
            ],
          ),
          const Divider(height: 30.0, thickness: 3.0),
          Container(
            height: 40.0,
            alignment: Alignment.center,
            child: const Text(
              '常用组件(RaisedButton)',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: <Widget>[
              RaisedButton(child: const Text('按钮1'), onPressed: () {}),
              RaisedButton(child: const Text('按钮2'), onPressed: () {}),
              RaisedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text('按钮3'),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
                onPressed: () {},
              ),
              RaisedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text('按钮4'),
                onPressed: null,
              ),
              RaisedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text('按钮5'),
                shape: Border.all(width: 1.0),
                onPressed: () {},
              ),
              RaisedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text('按钮6'),
                shape: Border.all(width: 1.0),
                onPressed: null,
              ),
              RaisedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text('按钮7'),
                shape: const StadiumBorder(side: BorderSide()),
                // 抗锯齿
                clipBehavior: Clip.antiAlias,
                onPressed: () {},
              ),
              RaisedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text('按钮8'),
                shape: const StadiumBorder(),
                // BeveledRectangleBorder 顶端斜角
                // BoxBorder
                // CircleBorder 圆形
                // InputBorder
                // RoundedRectangleBorder 顶端圆角
                // StadiumBorder 体育场型
                onPressed: () {},
              ),
              RaisedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text('按钮9'),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                  side: BorderSide(),
                ),
                onPressed: () {},
              ),
            ],
          ),
          const Divider(height: 30.0, thickness: 3.0),
          Container(
            height: 40.0,
            alignment: Alignment.center,
            child: const Text(
              '常用组件(OutlineButton)',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: <Widget>[
              OutlineButton(child: const Text('按钮1'), onPressed: () {}),
              OutlineButton(
                shape: const StadiumBorder(),
                child: const Text('按钮1'),
                onPressed: () {},
              ),
              const OutlineButton(child: Text('按钮2'), onPressed: null),
              OutlineButton.icon(
                icon: const Icon(Icons.add),
                label: const Text('按钮3'),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
                onPressed: () {},
              ),
              OutlineButton.icon(
                icon: const Icon(Icons.add),
                label: const Text('按钮4'),
                onPressed: null,
              ),
              OutlineButton.icon(
                icon: const Icon(Icons.add),
                label: const Text('按钮5'),
                shape: Border.all(width: 1.0),
                onPressed: () {},
              ),
              OutlineButton.icon(
                icon: const Icon(Icons.add),
                label: const Text('按钮6'),
                shape: Border.all(width: 1.0),
                onPressed: null,
              ),
              OutlineButton.icon(
                icon: const Icon(Icons.add),
                label: const Text('按钮7'),
                shape: const StadiumBorder(side: BorderSide()),
                // 抗锯齿
                clipBehavior: Clip.antiAlias,
                onPressed: () {},
              ),
              OutlineButton.icon(
                icon: const Icon(Icons.add),
                label: const Text('按钮8'),
                shape: const StadiumBorder(),
                // BeveledRectangleBorder 顶端斜角
                // BoxBorder
                // CircleBorder 圆形
                // InputBorder
                // RoundedRectangleBorder 顶端圆角
                // StadiumBorder 体育场型
                onPressed: () {},
              ),
              OutlineButton.icon(
                icon: const Icon(Icons.add),
                label: const Text('按钮9'),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                  side: BorderSide(),
                ),
                onPressed: () {},
              ),
            ],
          ),
          const Divider(height: 30.0, thickness: 3.0),
          Container(
            height: 40.0,
            alignment: Alignment.center,
            child: const Text(
              '常用组件(IconButton)',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {},
              ),
              const IconButton(
                icon: Icon(Icons.add),
                onPressed: null,
              ),
              IconButton(
                icon: const Icon(Icons.sentiment_satisfied),
                alignment: AlignmentDirectional.center,
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.volume_up),
                // padding: EdgeInsets.all(20.0),
                onPressed: () {},
              ),
              FloatingActionButton(
                child: const Icon(Icons.visibility),
                onPressed: () {},
                heroTag: null,
              ),
              FloatingActionButton(
                child: const Icon(Icons.visibility),
                elevation: 3.0,
                highlightElevation: 5.0,
                onPressed: () {},
                heroTag: null,
              ),
            ],
          ),
          const Divider(height: 30.0, thickness: 3.0),
          Container(
            height: 40.0,
            alignment: Alignment.center,
            child: const Text(
              '常用组件(RawMaterialButton)',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: <Widget>[
              RawMaterialButton(child: const Text('按钮1'), onPressed: () {}),
              RawMaterialButton(child: const Text('按钮2'), onPressed: () {}),
              RawMaterialButton(
                onPressed: () {},
                child: const Icon(
                  Icons.switch_camera,
                ),
                highlightElevation: 3.0,
              ),
              RawMaterialButton(
                onPressed: () {},
                child: const Icon(
                  Icons.switch_camera,
                ),
                shape: const CircleBorder(),
              ),
              RawMaterialButton(
                onPressed: () {},
                child: const Icon(
                  Icons.switch_camera,
                ),
                shape: const CircleBorder(side: BorderSide()),
              ),
              RawMaterialButton(
                onPressed: () {},
                child: const Icon(
                  Icons.switch_camera,
                ),
                shape: const CircleBorder(),
                elevation: 3.0,
                highlightElevation: 0.0,
                // fillColor: Colors.white,
                fillColor: Theme.of(context).canvasColor,
                padding: const EdgeInsets.all(12.0),
                // 抗锯齿
                clipBehavior: Clip.antiAlias,
              ),
              RawMaterialButton(
                onPressed: () {},
                child: const Icon(
                  Icons.switch_camera,
                ),
                shape: const StadiumBorder(side: BorderSide()),
              ),
              RawMaterialButton(
                onPressed: () {},
                child: const Icon(
                  Icons.switch_camera,
                ),
                animationDuration: const Duration(milliseconds: 200),
                shape: const StadiumBorder(),
                // fillColor: Colors.white,
                fillColor: Theme.of(context).canvasColor,
              ),
            ],
          ),
          const Divider(height: 30.0, thickness: 3.0),
          Container(
            height: 40.0,
            alignment: Alignment.center,
            child: const Text(
              '常用组件(TextField)',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              hintText: '提示文本',
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.account_box),
              hintText: '提示文本',
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.account_box),
              hintText: '提示文本',
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.clear),
              hintText: '提示文本',
            ),
          ),
          TextField(
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
              // isDense: true, //重要 用于编辑框对齐
              suffixIcon: InkWell(
                child: const Icon(Icons.clear),
                onTap: () {
                  print('object');
                },
              ),
              hintText: '提示文本',
            ),
          ),
        ],
      ),
    );
  }

  /// 主题属性值
  Widget _buildItemStyle(String name, TextStyle style) {
    return Container(
      constraints: const BoxConstraints(minHeight: 45.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Text(name, maxLines: 3),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                '文本内容',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: style,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// 系统字体色
  Map<String, TextStyle> _themeTextList(BuildContext context) {
    final ThemeData data = Theme.of(context);
    // typography 为笔墨属性,控制字体默认样式用
    print(data.typography.toString());
    // TextTheme primaryTextTheme,
    // TextTheme accentTextTheme,
    // 1.17之前的默认样式
    // display4 : TextStyle(debugLabel: 'englishLike display4 2014', inherit: false, fontSize: 112.0, fontWeight: FontWeight.w100, textBaseline: TextBaseline.alphabetic),
    // display3 : TextStyle(debugLabel: 'englishLike display3 2014', inherit: false, fontSize:  56.0, fontWeight: FontWeight.w400, textBaseline: TextBaseline.alphabetic),
    // display2 : TextStyle(debugLabel: 'englishLike display2 2014', inherit: false, fontSize:  45.0, fontWeight: FontWeight.w400, textBaseline: TextBaseline.alphabetic),
    // display1 : TextStyle(debugLabel: 'englishLike display1 2014', inherit: false, fontSize:  34.0, fontWeight: FontWeight.w400, textBaseline: TextBaseline.alphabetic),
    // headline : TextStyle(debugLabel: 'englishLike headline 2014', inherit: false, fontSize:  24.0, fontWeight: FontWeight.w400, textBaseline: TextBaseline.alphabetic),
    // title    : TextStyle(debugLabel: 'englishLike title 2014',    inherit: false, fontSize:  20.0, fontWeight: FontWeight.w500, textBaseline: TextBaseline.alphabetic),
    // subhead  : TextStyle(debugLabel: 'englishLike subhead 2014',  inherit: false, fontSize:  16.0, fontWeight: FontWeight.w400, textBaseline: TextBaseline.alphabetic),
    // body2    : TextStyle(debugLabel: 'englishLike body2 2014',    inherit: false, fontSize:  14.0, fontWeight: FontWeight.w500, textBaseline: TextBaseline.alphabetic),
    // body1    : TextStyle(debugLabel: 'englishLike body1 2014',    inherit: false, fontSize:  14.0, fontWeight: FontWeight.w400, textBaseline: TextBaseline.alphabetic),
    // caption  : TextStyle(debugLabel: 'englishLike caption 2014',  inherit: false, fontSize:  12.0, fontWeight: FontWeight.w400, textBaseline: TextBaseline.alphabetic),
    // button   : TextStyle(debugLabel: 'englishLike button 2014',   inherit: false, fontSize:  14.0, fontWeight: FontWeight.w500, textBaseline: TextBaseline.alphabetic),
    // subtitle : TextStyle(debugLabel: 'englishLike subtitle 2014', inherit: false, fontSize:  14.0, fontWeight: FontWeight.w500, textBaseline: TextBaseline.alphabetic, letterSpacing: 0.1),
    // overline : TextStyle(debugLabel: 'englishLike overline 2014', inherit: false, fontSize:  10.0, fontWeight: FontWeight.w400, textBaseline: TextBaseline.alphabetic, letterSpacing: 1.5),

    // 1.17后默认样式
    // static const TextTheme englishLike2018 = TextTheme(
    //   headline1 : TextStyle(debugLabel: 'englishLike headline1 2018', fontSize: 96.0, fontWeight: FontWeight.w300, textBaseline: TextBaseline.alphabetic, letterSpacing: -1.5),
    //   headline2 : TextStyle(debugLabel: 'englishLike headline2 2018', fontSize: 60.0, fontWeight: FontWeight.w300, textBaseline: TextBaseline.alphabetic, letterSpacing: -0.5),
    //   headline3 : TextStyle(debugLabel: 'englishLike headline3 2018', fontSize: 48.0, fontWeight: FontWeight.w400, textBaseline: TextBaseline.alphabetic, letterSpacing: 0.0),
    //   headline4 : TextStyle(debugLabel: 'englishLike headline4 2018', fontSize: 34.0, fontWeight: FontWeight.w400, textBaseline: TextBaseline.alphabetic, letterSpacing: 0.25),
    //   headline5 : TextStyle(debugLabel: 'englishLike headline5 2018', fontSize: 24.0, fontWeight: FontWeight.w400, textBaseline: TextBaseline.alphabetic, letterSpacing: 0.0),
    //   headline6 : TextStyle(debugLabel: 'englishLike headline6 2018', fontSize: 20.0, fontWeight: FontWeight.w500, textBaseline: TextBaseline.alphabetic, letterSpacing: 0.15),
    //   bodyText1 : TextStyle(debugLabel: 'englishLike bodyText1 2018', fontSize: 16.0, fontWeight: FontWeight.w400, textBaseline: TextBaseline.alphabetic, letterSpacing: 0.5),
    //   bodyText2 : TextStyle(debugLabel: 'englishLike bodyText2 2018', fontSize: 14.0, fontWeight: FontWeight.w400, textBaseline: TextBaseline.alphabetic, letterSpacing: 0.25),
    //   subtitle1 : TextStyle(debugLabel: 'englishLike subtitle1 2018', fontSize: 16.0, fontWeight: FontWeight.w400, textBaseline: TextBaseline.alphabetic, letterSpacing: 0.15),
    //   subtitle2 : TextStyle(debugLabel: 'englishLike subtitle2 2018', fontSize: 14.0, fontWeight: FontWeight.w500, textBaseline: TextBaseline.alphabetic, letterSpacing: 0.1),
    //   button    : TextStyle(debugLabel: 'englishLike button 2018',    fontSize: 14.0, fontWeight: FontWeight.w500, textBaseline: TextBaseline.alphabetic, letterSpacing: 0.75),
    //   caption   : TextStyle(debugLabel: 'englishLike caption 2018',   fontSize: 12.0, fontWeight: FontWeight.w400, textBaseline: TextBaseline.alphabetic, letterSpacing: 0.4),
    //   overline  : TextStyle(debugLabel: 'englishLike overline 2018',  fontSize: 10.0, fontWeight: FontWeight.w400, textBaseline: TextBaseline.alphabetic, letterSpacing: 1.5),
    // );

    return <String, TextStyle>{
      'TextTheme.overline': data.textTheme.overline!,
      'primary.overline': data.primaryTextTheme.overline!,
      'accent.overline': data.accentTextTheme.overline!,
      'TextTheme.caption': data.textTheme.caption!,
      'primary.caption': data.primaryTextTheme.caption!,
      'accent.caption': data.accentTextTheme.caption!,
      'TextTheme.button': data.textTheme.button!,
      'primary.button': data.primaryTextTheme.button!,
      'accent.button': data.accentTextTheme.button!,
      'TextTheme.bodyText2': data.textTheme.bodyText2!,
      'primary.bodyText2': data.primaryTextTheme.bodyText2!,
      'accent.bodyText2': data.accentTextTheme.bodyText2!,
      'TextTheme.bodyText1': data.textTheme.bodyText1!,
      'primary.bodyText1': data.primaryTextTheme.bodyText1!,
      'accent.bodyText1': data.accentTextTheme.bodyText1!,
      'TextTheme.subtitle2': data.textTheme.subtitle2!,
      'primary.subtitle2': data.primaryTextTheme.subtitle2!,
      'accent.subtitle2': data.accentTextTheme.subtitle2!,
      'TextTheme.subtitle1': data.textTheme.subtitle1!,
      'primary.subtitle1': data.primaryTextTheme.subtitle1!,
      'accent.subtitle1': data.accentTextTheme.subtitle1!,
      'TextTheme.headline6': data.textTheme.headline6!,
      'primary.headline6': data.primaryTextTheme.headline6!,
      'accent.headline6': data.accentTextTheme.headline6!,
      'TextTheme.headline5': data.textTheme.headline5!,
      'primary.headline5': data.primaryTextTheme.headline5!,
      'accent.headline5': data.accentTextTheme.headline5!,
      'TextTheme.headline4': data.textTheme.headline4!,
      'primary.headline4': data.primaryTextTheme.headline4!,
      'accent.headline4': data.accentTextTheme.headline4!,
      'TextTheme.headline3': data.textTheme.headline3!,
      'primary.headline3': data.primaryTextTheme.headline3!,
      'accent.headline3': data.accentTextTheme.headline3!,
      'TextTheme.headline2': data.textTheme.headline2!,
      'primary.headline2': data.primaryTextTheme.headline2!,
      'accent.headline2': data.accentTextTheme.headline2!,
      'TextTheme.headline1': data.textTheme.headline1!,
      'primary.headline1': data.primaryTextTheme.headline1!,
      'accent.headline1': data.accentTextTheme.headline1!,
    };
  }
}
