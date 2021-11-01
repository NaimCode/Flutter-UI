import 'package:flutter/material.dart';

class User {
  String? name;
  String? username;
  String? image;
  String? following;
  String? follower;
  String? like;
  User({
    this.name,
    this.username,
    this.image,
    this.following,
    this.follower,
    this.like,
  });
}

class Post {
  User? user;

  String? image;
  String? share;
  String? like;
  String? comment;
  String? desc;
  String? hashtag;
  Post({
    this.user,
    this.image,
    this.share,
    this.like,
    this.comment,
    this.desc,
    this.hashtag,
  });
}

User user1 = User(
    name: "Johnny Wilson",
    username: "",
    image: "assets/images/profile_3.jpg",
    follower: "121.9k",
    following: "29",
    like: "2.4M");
List<Post> listPost = [
  Post(
      user: user1,
      image: "assets/images/post_1.jpg",
      share: "200",
      like: "127k",
      comment: "1.3k",
      desc:
          "when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
      hashtag: "#fashion #photoshoot #passion"),
  Post(
      user: user1,
      image: "assets/images/post_2.jpg",
      share: "20",
      like: "7k",
      comment: "300",
      desc:
          "when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
      hashtag: "#fashion #photoshoot #passion"),
  Post(
      user: user1,
      image: "assets/images/post_3.jpg",
      share: "2k",
      like: "1.3M",
      comment: "18.3k",
      desc:
          "when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
      hashtag: "#yellow #womenpower")
];

//
class Menu {
  String? title;
  Widget? icon;
  Menu({
    this.title,
    this.icon,
  });
}

List<Menu> listMenu = [
  Menu(
      title: "Home",
      icon: const Icon(
        Icons.home,
        color: Color(0xff2605D1),
      )),
  Menu(
      title: "Discover",
      icon: Icon(
        Icons.map_outlined,
        color: Colors.brown[900],
      )),
  Menu(
      title: "Inbox",
      icon: Icon(
        Icons.inbox_outlined,
        color: Colors.brown[900],
      )),
  Menu(
      title: "Profile",
      icon: Icon(
        Icons.person_outline_outlined,
        color: Colors.brown[900],
      )),
];
