import 'package:flutter_technical_test/model/model_detail.dart';
import 'package:http/http.dart';
import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
part 'viewmodel_detail.g.dart';

class ViewmodelDetail = _ViewmodelDetail with _$ViewmodelDetail;

abstract class _ViewmodelDetail with Store {
  @observable
  ModelDetail itemDetail = ModelDetail();

  getDataList(int id) async {
    String authority = "jsonplaceholder.typicode.com";
    String unencodedPath = "posts/$id";

    Response request = await http.get(Uri.https(authority, unencodedPath));
    ModelDetail modelDetail = ModelDetail.fromJson(jsonDecode(request.body));

    this.itemDetail = modelDetail;
  }
}
