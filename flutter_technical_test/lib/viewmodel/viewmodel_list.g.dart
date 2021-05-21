// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewmodel_list.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ViewmodelList on _ViewmodelList, Store {
  final _$itemListAtom = Atom(name: '_ViewmodelList.itemList');

  @override
  List<Widget> get itemList {
    _$itemListAtom.reportRead();
    return super.itemList;
  }

  @override
  set itemList(List<Widget> value) {
    _$itemListAtom.reportWrite(value, super.itemList, () {
      super.itemList = value;
    });
  }

  @override
  String toString() {
    return '''
itemList: ${itemList}
    ''';
  }
}
