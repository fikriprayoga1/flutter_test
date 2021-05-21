import 'package:flutter/material.dart';
import 'package:flutter_technical_test/util/space_horizontal.dart';
import 'package:flutter_technical_test/util/unit_config.dart';

class ViewItemHeader extends StatelessWidget {
  final String title;

  ViewItemHeader([this.title = ""]);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: UnitConfig.getHeight(300),
      color: Colors.red,
      padding: EdgeInsets.only(
        left: UnitConfig.getWidth(50),
        top: isPortrait() ? UnitConfig.getHeight(75) : 0,
        right: UnitConfig.getWidth(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          backButton(context),
          titleText(),
          SpaceHorizontal(100),
        ],
      ),
    );
  }

  Widget titleText() {
    return Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    );
  }

  Widget backButton(BuildContext context) {
    double squareButtonSize = UnitConfig.getWidth(100);
    if (!isPortrait()) {
      squareButtonSize = UnitConfig.getHeight(100);
    }

    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        width: squareButtonSize,
        height: squareButtonSize,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.keyboard_arrow_left_outlined,
          color: Colors.red,
          size: 30,
        ),
      ),
    );
  }

  bool isPortrait() {
    bool isPortraitMode = true;
    if (UnitConfig.getScreenWidth() > UnitConfig.getScreenHeight()) {
      isPortraitMode = false;
    }

    return isPortraitMode;
  }
}
