import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'viewmodel_login.g.dart';

class ViewmodelLogin = _ViewmodelLogin with _$ViewmodelLogin;

abstract class _ViewmodelLogin with Store {
  BuildContext context;
}
