import 'package:flutter/material.dart';
import 'package:flutter_technical_test/util/unit_config.dart';
import 'package:flutter_technical_test/view/view_login.dart';
import 'package:flutter_technical_test/viewmodel/viewmodel_splash.dart';

class ViewSplash extends StatelessWidget {
  final viewmodelSplash = ViewmodelSplash();

  @override
  Widget build(BuildContext context) {
    viewmodelSplash.context = context;
    return Scaffold(
      body: body(),
    );
  }

  Widget body() {
    changeScreen();
    return Center(
      child: Container(
        width: UnitConfig.getWidth(300),
        height: UnitConfig.getWidth(300),
        child: Image.asset(
          "images/ic_symbolic_icon_medium.png",
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  void changeScreen() {
    Future.delayed(const Duration(milliseconds: 2000), () {
      Navigator.pushReplacement(viewmodelSplash.context,
          MaterialPageRoute(builder: (context) {
        return ViewLogin();
      }));
    });
  }
}
