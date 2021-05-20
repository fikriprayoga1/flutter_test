import 'package:flutter/material.dart';
import 'package:flutter_technical_test/util/unit_config.dart';

class SpaceVertical extends StatelessWidget {
  final int mSize;

  SpaceVertical(this.mSize);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UnitConfig.getHeight(mSize),
    );
  }
}
