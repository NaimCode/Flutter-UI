import 'package:flutter/material.dart';

//Model 1
class Model1 {
  String? title;
  String? subTitle;
  String? desc;
  double? progess;
  Color? color;
  Model1({
    this.title,
    this.subTitle,
    this.desc,
    this.progess,
    this.color,
  });
}

List<Model1> listModel1 = [
  Model1(
      title: "Sales",
      subTitle: "Total Sales Today",
      desc: "\$500",
      progess: 0.55,
      color: Colors.amber),
  Model1(
      title: "Profit",
      subTitle: "Per Day Ratio",
      desc: "\$150",
      progess: 0.30,
      color: Colors.brown),
  Model1(
      title: "Orders",
      subTitle: "Total Orders Today",
      desc: "1000",
      progess: 0.80,
      color: Colors.blue),
];
