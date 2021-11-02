import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/model.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "Social Media", debugShowCheckedModeBanner: false, home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleAvatar(
                backgroundColor: Color(0xff2605D1),
                child: Center(
                  child: FaIcon(
                    FontAwesomeIcons.connectdevelop,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              IconButton(
                  onPressed: () {},
                  icon:
                      FaIcon(FontAwesomeIcons.bell, color: Colors.brown[900])),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search_outlined,
                      size: 33, color: Colors.brown[900])),
              Expanded(child: Container()),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/profile_2.jpg"),
                    ),
                    const SizedBox(width: 5),
                    Text("Adrian Traouré",
                        style: GoogleFonts.montserrat(
                            fontSize: 14,
                            color: Colors.brown[900],
                            fontWeight: FontWeight.bold))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          [
            const HomeSection(),
            const Empty(),
            const Empty(),
            const Empty(),
          ][index],
          Container(
            width: double.infinity,
            height: 150,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.white70])),
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: listMenu
                      .map((e) => InkWell(
                            onTap: () {
                              setState(() {
                                index = listMenu.indexOf(e);
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(e.icon!,
                                    color: index == listMenu.indexOf(e)
                                        ? const Color(0xff2605D1)
                                        : null),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(e.title!,
                                    style: GoogleFonts.poppins(fontSize: 12)),
                              ],
                            ),
                          ))
                      .toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeSection extends StatelessWidget {
  const HomeSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listPost.length,
        itemBuilder: (context, index) => ItemPost(
              index: index,
            ));
  }
}

// ignore: must_be_immutable
class ItemPost extends StatefulWidget {
  int index;
  ItemPost({
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  State<ItemPost> createState() => _ItemPostState();
}

class _ItemPostState extends State<ItemPost>
    with SingleTickerProviderStateMixin {
  bool isOpen = false;

  double _op = 0.0;
  double _pad = 10;

  void setOpacity() async {
    await Future.delayed(Duration(milliseconds: 300 * widget.index), () {
      setState(() {
        _op = 1.0;
        _pad = 0;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    setOpacity();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      duration: const Duration(milliseconds: 500),
      padding: EdgeInsets.only(right: _pad),
      child: AnimatedOpacity(
        opacity: _op,
        duration: const Duration(milliseconds: 500),
        child: Container(
          alignment: Alignment.bottomLeft,
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          width: double.infinity,
          height: 450,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              image: DecorationImage(
                  image: AssetImage(listPost[widget.index].image!),
                  fit: BoxFit.cover)),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black54,
                          Colors.black87
                        ])),
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage(listPost[widget.index].user!.image!),
                        ),
                        const SizedBox(width: 15),
                        Text(listPost[widget.index].user!.name!,
                            style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(listPost[widget.index].desc!,
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.white.withOpacity(0.9))),
                    const SizedBox(height: 5),
                    Text(listPost[widget.index].hashtag!,
                        style: const TextStyle(
                            fontSize: 12, color: Colors.white60))
                  ],
                ),
              ),
              // AnimatedBuilder(
              //     animation: control,
              //     builder: (_, child) =>
              AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                child: Transform.translate(
                    offset: Offset(isOpen ? 0 : 80, 0),
                    child: Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: 40,
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        height: double.infinity,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  // control!.animateTo(control)
                                  isOpen = !isOpen;
                                });
                              },
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                height: 60,
                                width: 3,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 80,
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  bottomLeft: Radius.circular(40),
                                ),
                                child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 10.0, sigmaY: 10.0),
                                    child: Container(
                                        color: Colors.white10,
                                        child: !isOpen
                                            ? const SizedBox()
                                            : Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  ...[
                                                    const CircleAvatar(
                                                      backgroundColor:
                                                          Colors.white38,
                                                      child: Center(
                                                        child: Icon(
                                                            Icons
                                                                .favorite_outlined,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 2),
                                                      child: Text(
                                                        listPost[widget.index]
                                                            .like!,
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    )
                                                  ],
                                                  const SizedBox(
                                                    height: 3,
                                                  ),
                                                  ...[
                                                    const CircleAvatar(
                                                      backgroundColor:
                                                          Colors.white38,
                                                      child: Center(
                                                        child: Icon(
                                                            Icons.comment,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 2),
                                                      child: Text(
                                                        listPost[widget.index]
                                                            .comment!,
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    )
                                                  ],
                                                  const SizedBox(
                                                    height: 3,
                                                  ),
                                                  ...[
                                                    const CircleAvatar(
                                                      backgroundColor:
                                                          Colors.white38,
                                                      child: Center(
                                                        child: Icon(
                                                            Icons
                                                                .save_alt_rounded,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ),
                                                    const Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 2),
                                                      child: Text(
                                                        "Save",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    )
                                                  ],
                                                  const SizedBox(
                                                    height: 3,
                                                  ),
                                                  ...[
                                                    const CircleAvatar(
                                                      backgroundColor:
                                                          Colors.white38,
                                                      child: Center(
                                                        child: Icon(
                                                            Icons.share_rounded,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 2),
                                                      child: Text(
                                                        listPost[widget.index]
                                                            .share!,
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    )
                                                  ],
                                                ],
                                              ))),
                              ),
                            ),
                          ],
                        )
                        //)
                        )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Empty extends StatelessWidget {
  const Empty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Empty'),
      ),
    );
  }
}
