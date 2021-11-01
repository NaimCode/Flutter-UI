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

//Chat
class Chat {
  String? lastMessage;
  String? sender;
  String? images;
  String? date;
  bool? vue;
  Chat({
    this.lastMessage,
    this.sender,
    this.images,
    this.date,
    this.vue,
  });
}

List<Chat> listchat = [
  Chat(
      lastMessage:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum",
      sender: "Jack Michel",
      images: "assets/images/profile_2.jpg",
      date: "3 hrs",
      vue: true),
  Chat(
      lastMessage:
          "has been the industry's standard dummy text ever since the 1500s",
      sender: "Adriana Topi",
      images: "assets/images/profile_3.jpg",
      date: "10 hrs",
      vue: false),
  Chat(
      lastMessage:
          "when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
      sender: "Aïcha Soucia",
      images: "assets/images/profile_4.jpg",
      date: "12 hrs",
      vue: false),
  Chat(
      lastMessage:
          "It has survived not only five centuries, but also the leap into electronic",
      sender: "Imane foud",
      images: "assets/images/profile_5.jpg",
      date: "2 days",
      vue: true),
  Chat(
      lastMessage:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum",
      sender: "Jack Michel",
      images: "assets/images/profile_2.jpg",
      date: "3 hrs",
      vue: true),
  Chat(
      lastMessage:
          "has been the industry's standard dummy text ever since the 1500s",
      sender: "Adriana Topi",
      images: "assets/images/profile_3.jpg",
      date: "10 hrs",
      vue: false),
  Chat(
      lastMessage:
          "when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
      sender: "Aïcha Soucia",
      images: "assets/images/profile_4.jpg",
      date: "12 hrs",
      vue: false),
  Chat(
      lastMessage:
          "It has survived not only five centuries, but also the leap into electronic",
      sender: "Imane foud",
      images: "assets/images/profile_5.jpg",
      date: "2 days",
      vue: true),
];
