import 'package:flutter/material.dart';
import 'package:flutter_technical_test/view/view_list.dart';
import 'package:mobx/mobx.dart';
part 'viewmodel_login.g.dart';

class ViewmodelLogin = _ViewmodelLogin with _$ViewmodelLogin;

abstract class _ViewmodelLogin with Store {
  BuildContext context;
  final emailText = TextEditingController();
  final passwordText = TextEditingController();

  @observable
  bool isTextHidden = true;

  @observable
  bool isCorrectFormat = false;

  changePasswordFormMode() {
    if (isTextHidden) {
      isTextHidden = false;
    } else {
      isTextHidden = true;
    }
  }

  validateForm() {
    String emailText = this.emailText.text;
    String passwordText = this.passwordText.text;
    bool isEmailFormat = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(emailText);
    if ((emailText.isNotEmpty) &&
        (passwordText.isNotEmpty) &&
        (emailText.length > 5) &&
        (passwordText.length > 5) &&
        (passwordText.length < 32) &&
        (isEmailFormat)) {
      isCorrectFormat = true;
    } else {
      isCorrectFormat = false;
    }
  }

  processLogin() {
    if (isCorrectFormat) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return ViewList();
      }));
    }
  }
}
