import 'dart:math';
import 'package:flutter/material.dart';

class ResizeUtil {
  static const Size defaultSize = Size(360, 690);
  static late Size ui;

  static late bool allowtextScaling = true;

  static late double _screenWidth;
  static late double _screenHeight;
  static late double _base;
  static late Orientation _orientation;
  static late DeviceType _deviceType;

  void init(
    BoxConstraints constraints,
    Orientation orientation, {
    double base = 16.0,
    Size size = defaultSize,
    bool allowtextScaling = true,
  }) {
    _orientation = orientation;
    ui = size;
    allowtextScaling = allowtextScaling;

    if (orientation == Orientation.portrait) {
      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;
    } else {
      _screenWidth = constraints.maxHeight;
      _screenHeight = constraints.maxWidth;
    }

    if ((_orientation == Orientation.portrait && _screenWidth < 600) ||
        (_orientation == Orientation.landscape && _screenHeight < 600)) {
      _deviceType = DeviceType.Mobile;
    } else {
      _deviceType = DeviceType.Tablet;
    }

    _base = base;
  }

  double get screenWidth => _screenWidth;
  double get screenHeight => _screenHeight;

  double get scaleW => _screenWidth / ui.width;
  double get scaleH => _screenHeight / ui.height;
  double get scale => min(scaleW, scaleH);

  double get textScaleFactor => WidgetsBinding.instance!.window.textScaleFactor;

  double height(num input) => input * scaleH;

  double width(num input) => input * scaleW;

  double viewHeight(num input) => input * (_screenHeight / 100);

  double viewWidth(num input) => input * (_screenWidth / 100);

  double rem(num input) => input * _base;

  double scalarPixel(num input) =>
      allowtextScaling ? input * scale * textScaleFactor : input * scale;

  double radius(num input) => input * scale;

  Orientation get orientation => _orientation;
  DeviceType get deviceType => _deviceType;
}

enum DeviceType {
  Mobile,
  Tablet,
}
