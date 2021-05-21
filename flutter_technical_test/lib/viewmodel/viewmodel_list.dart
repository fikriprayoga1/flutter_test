import 'package:flutter/material.dart';
import 'package:flutter_technical_test/model/model_detail.dart';
import 'package:flutter_technical_test/model/model_list.dart';
import 'package:flutter_technical_test/util/space_vertical.dart';
import 'package:flutter_technical_test/view/view_detail.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
part 'viewmodel_list.g.dart';

class ViewmodelList = _ViewmodelList with _$ViewmodelList;

abstract class _ViewmodelList with Store {
  BuildContext context;

  @observable
  List<Widget> itemList = [];

  Widget itemCard(int id, String title, String subtitle) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ViewDetail(id);
          }));
        },
        title: Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          subtitle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }

  getDataList() {
    Future(() async {
      try {
        String authority = "jsonplaceholder.typicode.com";
        String unencodedPath = "posts";

        Response request = await http.get(Uri.https(authority, unencodedPath));
        ModelList modelList = ModelList.fromJson(jsonDecode(request.body));

        List<Widget> itemList = [];
        itemList.add(SpaceVertical(50));
        for (int i = 0; i < modelList.modelDetail.length; i++) {
          ModelDetail modelDetail =
              ModelDetail.fromJson(modelList.modelDetail[i]);
          itemList.add(
              itemCard(modelDetail.id, modelDetail.title, modelDetail.body));
        }
        itemList.add(SpaceVertical(100));

        this.itemList = itemList;
      } catch (e) {
        Fluttertoast.showToast(
            msg: "Something Wrong", toastLength: Toast.LENGTH_LONG);
      }
    });
  }
}
