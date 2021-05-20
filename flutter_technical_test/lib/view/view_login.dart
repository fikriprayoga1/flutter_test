import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_technical_test/util/space_vertical.dart';
import 'package:flutter_technical_test/util/unit_config.dart';
import 'package:flutter_technical_test/viewmodel/viewmodel_login.dart';

class ViewLogin extends StatelessWidget {
  final viewmodelLogin = ViewmodelLogin();
  final myFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    viewmodelLogin.context = context;
    return Scaffold(
      body: body(),
    );
  }

  Widget body() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.only(
        left: UnitConfig.getWidth(100),
        right: UnitConfig.getWidth(100),
      ),
      child: ListView(
        children: [
          SpaceVertical(200),
          logo(),
          SpaceVertical(50),
          Text(
            "Welcome",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SpaceVertical(25),
          Text(
            "Are you ready for the game changer",
            textAlign: TextAlign.center,
          ),
          SpaceVertical(100),
          emailInput(),
          SpaceVertical(25),
          passwordInput(),
          SpaceVertical(75),
          loginButton(),
          SpaceVertical(100),
          Text(
            "Email and password don't match",
            style: TextStyle(
              color: Colors.red,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

  Widget logo() {
    return Center(
      child: Container(
        width: UnitConfig.getWidth(100),
        height: UnitConfig.getWidth(100),
        child: Image.asset(
          "images/ic_symbolic_icon_medium.png",
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget emailInput() {
    return Theme(
      data: Theme.of(viewmodelLogin.context).copyWith(
        primaryColor: Colors.red,
      ),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          labelText: "Email",
        ),
        keyboardType: TextInputType.emailAddress,
        cursorColor: Colors.red,
      ),
    );
  }

  Widget passwordInput() {
    return Theme(
      data: Theme.of(viewmodelLogin.context).copyWith(
        primaryColor: Colors.red,
      ),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          labelText: "Password",
          suffixIcon: Icon(
            CupertinoIcons.eye_slash,
            color: Colors.grey,
          ),
        ),
        keyboardType: TextInputType.visiblePassword,
        cursorColor: Colors.red,
      ),
    );
  }

  Widget loginButton() {
    return Container(
      width: double.infinity,
      height: UnitConfig.getHeight(150),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey[300],
      ),
      child: Center(
        child: Text(
          "Sign In",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
