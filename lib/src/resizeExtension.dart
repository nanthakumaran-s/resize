import 'package:resize/src/resizeUtil.dart';

extension ResizeExtension on num {
  /// Responsive height [ResizeUtil.height]
  num get h => ResizeUtil().height(this);

  /// Responsive width [ResizeUtil.width]
  num get w => ResizeUtil().width(this);

  /// Font size [ResizeUtil.scalarPixel]
  num get sp => ResizeUtil().scalarPixel(this);

  /// Radius for rounded corners [ResizeUtil.radius]
  num get r => ResizeUtil().radius(this);

  /// Height referenced from device's height [ResizeUtil.viewHeight]
  num get vh => ResizeUtil().viewHeight(this);

  /// Width referenced from device's width [ResizeUtil.viewWidth]
  num get vw => ResizeUtil().viewWidth(this);

  /// Font size using rem [ResizeUtil.rem]
  num get rem => ResizeUtil().rem(this);
}
