import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_technical_test/util/space_vertical.dart';
import 'package:flutter_technical_test/util/unit_config.dart';
import 'package:flutter_technical_test/viewmodel/viewmodel_login.dart';

class ViewLogin extends StatelessWidget {
  final viewmodelLogin = ViewmodelLogin();

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
          emailForm(),
          SpaceVertical(25),
          passwordForm(),
          SpaceVertical(75),
          loginButton(),
          SpaceVertical(100),
          warningText(),
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

  Widget emailForm() {
    return Theme(
      data: Theme.of(viewmodelLogin.context).copyWith(
        primaryColor: Colors.red,
      ),
      child: TextField(
        onChanged: (value) {
          viewmodelLogin.validateForm();
        },
        controller: viewmodelLogin.emailText,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          labelText: "Email",
        ),
        keyboardType: TextInputType.emailAddress,
        cursorColor: Colors.red,
        textInputAction: TextInputAction.next,
      ),
    );
  }

  Widget passwordForm() {
    return Theme(
      data: Theme.of(viewmodelLogin.context).copyWith(
        primaryColor: Colors.red,
      ),
      child: Observer(
        builder: (context) => TextField(
          onChanged: (value) {
            viewmodelLogin.validateForm();
          },
          controller: viewmodelLogin.passwordText,
          obscureText: viewmodelLogin.isTextHidden,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            labelText: "Password",
            suffixIcon: IconButton(
              icon: viewmodelLogin.isTextHidden
                  ? Icon(CupertinoIcons.eye_slash)
                  : Icon(CupertinoIcons.eye),
              color: Colors.grey,
              onPressed: () {
                viewmodelLogin.changePasswordFormMode();
              },
            ),
          ),
          keyboardType: TextInputType.visiblePassword,
          cursorColor: Colors.red,
          textInputAction: TextInputAction.done,
        ),
      ),
    );
  }

  Widget loginButton() {
    return GestureDetector(
      onTap: () {
        viewmodelLogin.processLogin();
      },
      child: Observer(
        builder: (context) => Container(
          width: double.infinity,
          height: UnitConfig.getHeight(150),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color:
                viewmodelLogin.isCorrectFormat ? Colors.blue : Colors.grey[300],
          ),
          child: Center(
            child: Text(
              "Sign In",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget warningText() {
    return Observer(
      builder: (context) {
        if (!viewmodelLogin.isCorrectFormat) {
          return Text(
            "Email and password do not match!",
            style: TextStyle(
              color: Colors.red,
            ),
            textAlign: TextAlign.center,
          );
        } else {
          return Container();
        }
      },
    );
  }
}
