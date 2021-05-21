import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_technical_test/util/unit_config.dart';
import 'package:flutter_technical_test/view/view_item_header.dart';
import 'package:flutter_technical_test/viewmodel/viewmodel_list.dart';

class ViewList extends StatelessWidget {
  final viewmodelList = ViewmodelList();

  @override
  Widget build(BuildContext context) {
    viewmodelList.context = context;
    return Scaffold(
      body: body(),
    );
  }

  Widget body() {
    viewmodelList.getDataList();
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          ViewItemHeader("Info List"),
          data(),
        ],
      ),
    );
  }

  Widget data() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(
          left: UnitConfig.getWidth(50),
          right: UnitConfig.getWidth(50),
        ),
        child: Observer(
          builder: (context) => ListView(
            children: viewmodelList.itemList,
          ),
        ),
      ),
    );
  }
}
