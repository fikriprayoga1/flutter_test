import 'package:flutter/material.dart';
import 'package:flutter_technical_test/util/unit_config.dart';

class SpaceHorizontal extends StatelessWidget {
  final int mSize;

  SpaceHorizontal(this.mSize);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: UnitConfig.getWidth(mSize),
    );
  }
}
