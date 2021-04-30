import 'package:resize/src/resizeUtil.dart';

extension ResizeExtension on num {
  /// Responsive height [ResizeUtil.height]
<<<<<<< HEAD
  double get h => ResizeUtil().height(this);
=======
  double get h => ResizeUtil().height(this) ;
>>>>>>> c658c6416682444bfa471d49e63e331bbe83e2cb

  /// Responsive width [ResizeUtil.width]
  double get w => ResizeUtil().width(this);

  /// Font size [ResizeUtil.scalarPixel]
  double get sp => ResizeUtil().scalarPixel(this);

  /// Radius for rounded corners [ResizeUtil.radius]
  double get r => ResizeUtil().radius(this);

  /// Height referenced from device's height [ResizeUtil.viewHeight]
  double get vh => ResizeUtil().viewHeight(this);

  /// Width referenced from device's width [ResizeUtil.viewWidth]
  double get vw => ResizeUtil().viewWidth(this);

  /// Font size using rem [ResizeUtil.rem]
  double get rem => ResizeUtil().rem(this);
}
