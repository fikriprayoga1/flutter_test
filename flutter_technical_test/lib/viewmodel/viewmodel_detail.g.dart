// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewmodel_detail.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ViewmodelDetail on _ViewmodelDetail, Store {
  final _$itemDetailAtom = Atom(name: '_ViewmodelDetail.itemDetail');

  @override
  ModelDetail get itemDetail {
    _$itemDetailAtom.reportRead();
    return super.itemDetail;
  }

  @override
  set itemDetail(ModelDetail value) {
    _$itemDetailAtom.reportWrite(value, super.itemDetail, () {
      super.itemDetail = value;
    });
  }

  @override
  String toString() {
    return '''
itemDetail: ${itemDetail}
    ''';
  }
}
