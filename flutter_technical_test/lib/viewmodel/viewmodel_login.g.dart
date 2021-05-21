// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewmodel_login.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ViewmodelLogin on _ViewmodelLogin, Store {
  final _$isTextHiddenAtom = Atom(name: '_ViewmodelLogin.isTextHidden');

  @override
  bool get isTextHidden {
    _$isTextHiddenAtom.reportRead();
    return super.isTextHidden;
  }

  @override
  set isTextHidden(bool value) {
    _$isTextHiddenAtom.reportWrite(value, super.isTextHidden, () {
      super.isTextHidden = value;
    });
  }

  final _$isCorrectFormatAtom = Atom(name: '_ViewmodelLogin.isCorrectFormat');

  @override
  bool get isCorrectFormat {
    _$isCorrectFormatAtom.reportRead();
    return super.isCorrectFormat;
  }

  @override
  set isCorrectFormat(bool value) {
    _$isCorrectFormatAtom.reportWrite(value, super.isCorrectFormat, () {
      super.isCorrectFormat = value;
    });
  }

  @override
  String toString() {
    return '''
isTextHidden: ${isTextHidden},
isCorrectFormat: ${isCorrectFormat}
    ''';
  }
}
