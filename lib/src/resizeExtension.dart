import 'package:resize/src/resizeUtil.dart';

extension ResizeExtension on num {
  num get h => ResizeUtil().height(this);
  num get w => ResizeUtil().width(this);
  num get sp => ResizeUtil().scalarPixel(this);
  num get r => ResizeUtil().radius(this);
  num get vh => ResizeUtil().viewHeight(this);
  num get vw => ResizeUtil().viewWidth(this);
  num get rem => ResizeUtil().rem(this);
}
