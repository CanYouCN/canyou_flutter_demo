import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetsThemeColorsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> listAttribute = _themeAttribute(context);
    final Map<String, Color> listThemeColor = _themeColorList(context);
    final Map<String, Color> listTextThemeColor = _themeTextColorList(context);
    return ListView(
      padding: const EdgeInsets.all(15.0),
      children: <Widget>[
        Container(
          height: 40.0,
          alignment: Alignment.center,
          child: const Text(
            'ThemeDataAttribute',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        const Divider(height: 30.0, thickness: 3.0),
        ...listAttribute.keys.map((String key) {
          return _buildItemAttribute(key, listAttribute[key]!);
        }).toList(),
        const Divider(height: 30.0, thickness: 3.0),
        Container(
          height: 40.0,
          alignment: Alignment.center,
          child: const Text(
            'ThemeDataColor',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        const Divider(height: 30.0, thickness: 3.0),
        ...listThemeColor.keys.map((String key) {
          return _buildThemeColor(key, listThemeColor[key]!);
        }).toList(),
        const Divider(height: 30.0, thickness: 3.0),
        Container(
          height: 40.0,
          alignment: Alignment.center,
          child: const Text(
            'TextThemeColor',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        const Divider(height: 30.0, thickness: 3.0),
        ...listTextThemeColor.keys.map((String key) {
          return _buildThemeColor(key, listTextThemeColor[key]!);
        }).toList(),
      ],
    );
  }

  Map<String, String> _themeAttribute(BuildContext context) {
    final ThemeData data = Theme.of(context);
    // typography 为笔墨属性,控制字体默认样式用
    // print(data.typography.toString());
    return <String, String>{
      'brightness': data.brightness.toString(),
      'accentColorBrightness': data.accentColorBrightness.toString(),
      'primaryColorBrightness': data.primaryColorBrightness.toString(),
      'splashFactory': data.splashFactory.toString(),
      'fontFamily': DefaultTextStyle.of(context).style.fontFamily!,
      'platform': data.platform.toString(),
      'materialTapTargetSize': data.materialTapTargetSize.toString(),
      'applyElevationOverlayColor': data.applyElevationOverlayColor.toString(),
      'IconTheme.size': data.iconTheme.size.toString(),
      // 'typography': data.typography.toString(),
    };
  }

  /// 系统主要颜色
  Map<String, Color> _themeColorList(BuildContext context) {
    final ThemeData data = Theme.of(context);
    return <String, Color>{
      'primarySwatch': data.primaryColor,
      'primaryColor': data.primaryColor,
      'primaryColorLight': data.primaryColorLight,
      'primaryColorDark': data.primaryColorDark,
      'accentColor': data.accentColor,
      'canvasColor': data.canvasColor,
      'scaffoldBackgroundColor': data.scaffoldBackgroundColor,
      'bottomAppBarColor': data.bottomAppBarColor,
      'cardColor': data.cardColor,
      'dividerColor': data.dividerColor,
      'focusColor': data.focusColor,
      'hoverColor': data.hoverColor,
      'highlightColor': data.highlightColor,
      'splashColor': data.splashColor,
      'selectedRowColor': data.selectedRowColor,
      'unselectedWidgetColor': data.unselectedWidgetColor,
      'disabledColor': data.disabledColor,
      'buttonColor': data.buttonColor,
      'secondaryHeaderColor': data.secondaryHeaderColor,
      'textSelectionColor': data.textSelectionTheme.selectionColor!,
      'cursorColor': data.textSelectionTheme.cursorColor!,
      'textSelectionHandleColor': data.textSelectionTheme.selectionHandleColor!,
      'backgroundColor': data.backgroundColor,
      'dialogBackgroundColor': data.dialogBackgroundColor,
      'indicatorColor': data.indicatorColor,
      'hintColor': data.hintColor,
      'errorColor': data.errorColor,
      'toggleableActiveColor': data.toggleableActiveColor,
      'IconTheme.color': data.iconTheme.color!,
    };
  }

  /// 系统字体色
  Map<String, Color> _themeTextColorList(BuildContext context) {
    final ThemeData data = Theme.of(context);
    // TextTheme primaryTextTheme,
    // TextTheme accentTextTheme,
    return <String, Color>{
      'TextTheme.headline1': data.textTheme.headline1!.color!,
      'TextTheme.headline2': data.textTheme.headline2!.color!,
      'TextTheme.headline3': data.textTheme.headline3!.color!,
      'TextTheme.headline4': data.textTheme.headline4!.color!,
      'TextTheme.headline5': data.textTheme.headline5!.color!,
      'TextTheme.headline6': data.textTheme.headline6!.color!,
      'TextTheme.subtitle1': data.textTheme.subtitle1!.color!,
      'TextTheme.subtitle2': data.textTheme.subtitle2!.color!,
      'TextTheme.bodyText1': data.textTheme.bodyText1!.color!,
      'TextTheme.bodyText2': data.textTheme.bodyText2!.color!,
      'TextTheme.caption': data.textTheme.caption!.color!,
      'TextTheme.button': data.textTheme.button!.color!,
      'TextTheme.overline': data.textTheme.overline!.color!,
    };
  }

  Widget _buildThemeColor(String name, Color color) {
    return SizedBox(
      height: 45.0,
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
              height: 35.0,
              alignment: Alignment.center,
              child: Text(
                color.value.toRadixString(16).padLeft(8, '0').toUpperCase(),
                style: TextStyle(
                  color: Color.fromARGB(
                    color.alpha,
                    255 - color.red,
                    255 - color.green,
                    255 - color.blue,
                  ),
                ),
              ),
              decoration: ShapeDecoration(
                color: color,
                shape: const StadiumBorder(
                  side: BorderSide(width: 5.0, color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// 主题属性值
  Widget _buildItemAttribute(String name, String value) {
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
              height: 35.0,
              alignment: Alignment.center,
              child: Text(
                value,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// 系统按钮主题色
  void buttonTheme() {
    // ButtonThemeData buttonTheme
    //   this.textTheme = ButtonTextTheme.normal,
    //   this.minWidth = 88.0,
    //   this.height = 36.0,
    //   EdgeInsetsGeometry padding,
    //   ShapeBorder shape,
    //   this.layoutBehavior = ButtonBarLayoutBehavior.padded,
    //   this.alignedDropdown = false,
    //   Color buttonColor,
    //   Color disabledColor,
    //   Color focusColor,
    //   Color hoverColor,
    //   Color highlightColor,
    //   Color splashColor,
    //   this.colorScheme,
    //   MaterialTapTargetSize materialTapTargetSize,
  }

  /// Toggle按钮主题色
  void toggleButtonsTheme() {
    /// ToggleButtonsThemeData toggleButtonsTheme,
    //   this.textStyle,
    //   this.constraints,
    //   this.color,
    //   this.selectedColor,
    //   this.disabledColor,
    //   this.fillColor,
    //   this.focusColor,
    //   this.highlightColor,
    //   this.hoverColor,
    //   this.splashColor,
    //   this.borderColor,
    //   this.selectedBorderColor,
    //   this.disabledBorderColor,
    //   this.borderRadius,
    //   this.borderWidth,
  }

  void inputDecorationTheme() {
    // InputDecorationTheme inputDecorationTheme,
    // this.labelStyle,
    //   this.helperStyle,
    //   this.helperMaxLines,
    //   this.hintStyle,
    //   this.errorStyle,
    //   this.errorMaxLines,
    //   this.hasFloatingPlaceholder = true,
    //   this.isDense = false,
    //   this.contentPadding,
    //   this.isCollapsed = false,
    //   this.prefixStyle,
    //   this.suffixStyle,
    //   this.counterStyle,
    //   this.filled = false,
    //   this.fillColor,
    //   this.focusColor,
    //   this.hoverColor,
    //   this.errorBorder,
    //   this.focusedBorder,
    //   this.focusedErrorBorder,
    //   this.disabledBorder,
    //   this.enabledBorder,
    //   this.border,
    //   this.alignLabelWithHint = false,
  }

  void iconTheme() {
    // IconThemeData iconTheme,
    // IconThemeData primaryIconTheme,
    // IconThemeData accentIconTheme,
    //   color,
    //   opacity
    //   size
  }

  void sliderTheme() {
    // SliderThemeData sliderTheme,
    //   this.trackHeight,
    //   this.activeTrackColor,
    //   this.inactiveTrackColor,
    //   this.disabledActiveTrackColor,
    //   this.disabledInactiveTrackColor,
    //   this.activeTickMarkColor,
    //   this.inactiveTickMarkColor,
    //   this.disabledActiveTickMarkColor,
    //   this.disabledInactiveTickMarkColor,
    //   this.thumbColor,
    //   this.overlappingShapeStrokeColor,
    //   this.disabledThumbColor,
    //   this.overlayColor,
    //   this.valueIndicatorColor,
    //   this.overlayShape,
    //   this.tickMarkShape,
    //   this.thumbShape,
    //   this.trackShape,
    //   this.valueIndicatorShape,
    //   this.rangeTickMarkShape,
    //   this.rangeThumbShape,
    //   this.rangeTrackShape,
    //   this.rangeValueIndicatorShape,
    //   this.showValueIndicator,
    //   this.valueIndicatorTextStyle,
    //   this.minThumbSeparation,
    //   this.thumbSelector,
  }

  void tabBarTheme() {
    // TabBarTheme tabBarTheme,
    //   this.indicator,
    //   this.indicatorSize,
    //   this.labelColor,
    //   this.labelPadding,
    //   this.labelStyle,
    //   this.unselectedLabelColor,
    //   this.unselectedLabelStyle,
  }

  void tooltipTheme() {
    // TooltipThemeData tooltipTheme,
    //   this.height,
    //   this.padding,
    //   this.margin,
    //   this.verticalOffset,
    //   this.preferBelow,
    //   this.excludeFromSemantics,
    //   this.decoration,
    //   this.textStyle,
    //   this.waitDuration,
    //   this.showDuration,
  }

  void cardTheme() {
    // CardTheme cardTheme,
    //   this.clipBehavior,
    //   this.color,
    //   this.elevation,
    //   this.margin,
    //   this.shape,

    // cardTheme: CardTheme(
    //   elevation: 0.5,
    //   clipBehavior: Clip.antiAlias,
    //   shape: StadiumBorder(
    //     side: BorderSide(
    //       width: 1.0,
    //       color: Colors.red,
    //     ),
    //   ),
    //   // shape: RoundedRectangleBorder(
    //   //   side: BorderSide.none,
    //   //   borderRadius: BorderRadius.all(
    //   //     Radius.circular(10.0),
    //   //   ),
    //   // ),
    //   // shape: CircleBorder(),
    //   // shape: StadiumBorder(),
    // ),
  }

  void chipTheme() {
    // ChipThemeData chipTheme,
    //   @required this.backgroundColor,
    //   this.deleteIconColor,
    //   @required this.disabledColor,
    //   @required this.selectedColor,
    //   @required this.secondarySelectedColor,
    //   this.shadowColor,
    //   this.selectedShadowColor,
    //   this.showCheckmark,
    //   this.checkmarkColor,
    //   @required this.labelPadding,
    //   @required this.padding,
    //   @required this.shape,
    //   @required this.labelStyle,
    //   @required this.secondaryLabelStyle,
    //   @required this.brightness,
    //   this.elevation,
    //   this.pressElevation,
  }

  /// 设置全局的过渡动画, 与MaterialPageRoute跳转有关
  void pageTransitionsTheme() {
    // PageTransitionsTheme pageTransitionsTheme,
    // 使用方式如下:
    // pageTransitionsTheme: PageTransitionsTheme(
    //   builders: <TargetPlatform, PageTransitionsBuilder>{
    //     TargetPlatform.iOS: createTransition(),
    //     TargetPlatform.android: createTransition(),
    //   },
    // ),
    // PageTransitionsBuilder createTransition() {
    //   return ZoomPageTransitionsBuilder();
    // }
  }

  void appBarTheme() {
    // AppBarTheme appBarTheme,
    //   this.brightness,
    //   this.color,
    //   this.elevation,
    //   this.iconTheme,
    //   this.actionsIconTheme,
    //   this.textTheme,
  }

  void bottomAppBarTheme() {
    // BottomAppBarTheme bottomAppBarTheme,
    //   this.color,
    //   this.elevation,
    //   this.shape,
  }

  void colorScheme() {
    // ColorScheme colorScheme,
    //   @required this.primary,
    //   @required this.primaryVariant,
    //   @required this.secondary,
    //   @required this.secondaryVariant,
    //   @required this.surface,
    //   @required this.background,
    //   @required this.error,
    //   @required this.onPrimary,
    //   @required this.onSecondary,
    //   @required this.onSurface,
    //   @required this.onBackground,
    //   @required this.onError,
    //   @required this.brightness,
  }

  void dialogTheme() {
    // DialogTheme dialogTheme,
    //   this.backgroundColor,
    //   this.elevation,
    //   this.shape,
    //   this.titleTextStyle,
    //   this.contentTextStyle,
  }

  void floatingActionButtonTheme() {
    // FloatingActionButtonThemeData floatingActionButtonTheme,
    //   this.foregroundColor,
    //   this.backgroundColor,
    //   this.focusColor,
    //   this.hoverColor,
    //   this.splashColor,
    //   this.elevation,
    //   this.focusElevation,
    //   this.hoverElevation,
    //   this.disabledElevation,
    //   this.highlightElevation,
    //   this.shape,
  }

  void cupertinoOverrideTheme() {
    // CupertinoThemeData cupertinoOverrideTheme,
    //   Brightness brightness,
    //   Color primaryColor,
    //   Color primaryContrastingColor,
    //   CupertinoTextThemeData textTheme,
    //   Color barBackgroundColor,
    //   Color scaffoldBackgroundColor,
  }

  void snackBarTheme() {
    // SnackBarThemeData snackBarTheme,
    //   this.backgroundColor,
    //   this.actionTextColor,
    //   this.disabledActionTextColor,
    //   this.contentTextStyle,
    //   this.elevation,
    //   this.shape,
    //   this.behavior,
  }

  void bottomSheetTheme() {
    // BottomSheetThemeData bottomSheetTheme,
    //   this.backgroundColor,
    //   this.actionTextColor,
    //   this.disabledActionTextColor,
    //   this.contentTextStyle,
    //   this.elevation,
    //   this.shape,
    //   this.behavior,
  }

  void popupMenuTheme() {
    // PopupMenuThemeData popupMenuTheme,
    //   this.color,
    //   this.shape,
    //   this.elevation,
    //   this.textStyle,
  }

  void bannerTheme() {
    // MaterialBannerThemeData bannerTheme,
    //   this.backgroundColor,
    //   this.contentTextStyle,
    //   this.padding,
    //   this.leadingPadding,
  }

  void dividerTheme() {
    // DividerThemeData dividerTheme,
    //   this.color,
    //   this.space,
    //   this.thickness,
    //   this.indent,
    //   this.endIndent,
  }

  void buttonBarTheme() {
    // ButtonBarThemeData buttonBarTheme,
    //   this.alignment,
    //   this.mainAxisSize,
    //   this.buttonTextTheme,
    //   this.buttonMinWidth,
    //   this.buttonHeight,
    //   this.buttonPadding,
    //   this.buttonAlignedDropdown,
    //   this.layoutBehavior,
  }
}
