import 'dart:ui';

import 'package:flutter/cupertino.dart';

class SizeUtils {
  late double _standWidth;

  late BuildContext _context;
  bool _isDp = false;
  static SizeUtils _sizeUtils = SizeUtils();
  static SizeUtils getInstance() {
    return _sizeUtils;
  }

  static void init(BuildContext context,
      {double standWidth = 750, bool isDp = false}) {
    _sizeUtils._context = context;
    _sizeUtils._standWidth = standWidth;
    _sizeUtils._isDp = isDp;
  }

  double realWidth(double width) {
    if (_isDp) {
      double sWidth = MediaQuery.of(_context).size.width;
      return width * _standWidth / sWidth;
    } else {
      double sWidth = window.physicalSize.width;
      return width * _standWidth / sWidth;
    }
  }

  double realHeight(double height) {
    if (_isDp) {
      double sHeight = MediaQuery.of(_context).size.height;
      return height * sHeight / _standWidth;
    } else {
      double sHeight = window.physicalSize.height;
      return height * sHeight / _standWidth;
    }
  }
}

extension DoubleExtion on double {
  double get px => SizeUtils.getInstance().realWidth(this);
}

extension IntExtion on int {
  int get px => SizeUtils.getInstance().realWidth(this.toDouble()).toInt();
}
