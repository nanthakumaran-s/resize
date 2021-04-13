import 'package:flutter/material.dart';
import 'package:resize/src/resizeUtil.dart';

//Helper Widget
class Resize extends StatelessWidget {
  final Widget Function() builder;
  final double baseForREM;
  final Size size;
  final bool allowtextScaling;

  Resize({
    required this.builder,
    this.size = ResizeUtil.defaultSize,
    this.baseForREM = 16.0,
    this.allowtextScaling = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) => OrientationBuilder(
        builder: (_, orientation) {
          if (constraints.maxWidth != 0) {
            ResizeUtil().init(
              constraints,
              orientation,
              base: baseForREM,
              size: size,
              allowtextScaling: allowtextScaling,
            );
            return builder();
          }
          return Container();
        },
      ),
    );
  }
}
