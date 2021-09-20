import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class AppContext {
  static final GlobalKey<NavigatorState> navigatorState = GlobalKey();
}

mixin App {
  BuildContext? get ctx => AppContext.navigatorState.currentContext;

  Uri baseUrl(String endpoint) =>
      Uri.parse('https://primulaceous-augmen.000webhostapp.com/$endpoint');

  /// give access to Theme.of(context)
  ThemeData get theme {
    var _theme = ThemeData.fallback();
    if (ctx != null) {
      _theme = Theme.of(ctx!);
    }
    return _theme;
  }

  double get pixelRatio => ui.window.devicePixelRatio;

  Size get size => ui.window.physicalSize / pixelRatio;

  double get width => size.width;

  double get height => size.height;

  Widget columnSpacer({double? height}) => SizedBox(
        height: height ?? width * 0.05,
      );

  Widget rowSpacer({double? width}) => SizedBox(
        width: width ?? height * 0.02,
      );

  TextTheme get textTheme => theme.textTheme;

  Future<dynamic> push(Widget page) =>
      Navigator.of(ctx!).push(MaterialPageRoute(builder: (context) => page));

  // canPop() => Navigator.pop(ctx!);
  // maybePop() => Navigator.maybePop(ctx!);

  Future<dynamic> pushReplacement(Widget page) => Navigator.of(ctx!)
      .pushReplacement(MaterialPageRoute(builder: (context) => page));

  Future<dynamic> pushAndRemoveUntil(Widget page) =>
      Navigator.of(ctx!).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => page), (_) => false);

  void pop() => Navigator.of(ctx!).pop();

  void canPop() => Navigator.of(ctx!).canPop();
}
