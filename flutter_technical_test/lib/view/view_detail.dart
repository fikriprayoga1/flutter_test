import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_technical_test/util/space_vertical.dart';
import 'package:flutter_technical_test/util/unit_config.dart';
import 'package:flutter_technical_test/view/view_item_header.dart';
import 'package:flutter_technical_test/viewmodel/viewmodel_detail.dart';

class ViewDetail extends StatelessWidget {
  final viewmodelDetail = ViewmodelDetail();
  final int id;

  ViewDetail([this.id = 0]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
    );
  }

  Widget body() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          ViewItemHeader("Detail Info"),
          data(),
        ],
      ),
    );
  }

  Widget data() {
    viewmodelDetail.getDataList(id);
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(
          left: UnitConfig.getWidth(50),
          right: UnitConfig.getWidth(50),
        ),
        child: Observer(
          builder: (context) => ListView(
            children: [
              SpaceVertical(50),
              title(viewmodelDetail.itemDetail.title),
              SpaceVertical(50),
              description(viewmodelDetail.itemDetail.body),
            ],
          ),
        ),
      ),
    );
  }

  Widget title([String title = "title"]) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget description([String description = "Description"]) {
    return Text(
      description,
      style: TextStyle(),
      textAlign: TextAlign.justify,
    );
  }
}
