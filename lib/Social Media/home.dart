import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/Social%20Media/model.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Social Media",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
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
                      icon: FaIcon(FontAwesomeIcons.bell,
                          color: Colors.brown[900])),
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
              ListView.builder(
                  itemCount: listPost.length,
                  itemBuilder: (context, index) => Container(
                        alignment: Alignment.bottomLeft,
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 30),
                        width: double.infinity,
                        height: 450,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            image: DecorationImage(
                                image: AssetImage(listPost[index].image!),
                                fit: BoxFit.cover)),
                        child: Container(
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
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                        listPost[index].user!.image!),
                                  ),
                                  const SizedBox(width: 15),
                                  Text(listPost[index].user!.name!,
                                      style: GoogleFonts.montserrat(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white))
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(listPost[index].desc!,
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.white.withOpacity(0.9))),
                              const SizedBox(height: 5),
                              Text(listPost[index].hashtag!,
                                  style: const TextStyle(
                                      fontSize: 12, color: Colors.white60))
                            ],
                          ),
                        ),
                      )),
              Container(
                width: double.infinity,
                height: 150,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.white70])),
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: listMenu
                          .map((e) => Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  e.icon!,
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(e.title!,
                                      style: GoogleFonts.poppins(fontSize: 12)),
                                ],
                              ))
                          .toList(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
