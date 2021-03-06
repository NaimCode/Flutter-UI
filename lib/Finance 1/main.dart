import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/Finance%201/model.dart';

//Color
Color colorPrimary = const Color(0xff1B1C1B);
Color colorSecondary = const Color(0xffA4E5A9);

class Finance1 extends StatefulWidget {
  const Finance1({Key? key}) : super(key: key);

  @override
  State<Finance1> createState() => _Finance1State();
}

class _Finance1State extends State<Finance1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Finance 1",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.ellipsisH,
                      color: colorPrimary,
                    ),
                    onPressed: () {},
                  ),
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/profile_1.jpg'),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hello Elisa',
                          style: GoogleFonts.ubuntu(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      Text('Welcome back !',
                          style: GoogleFonts.ubuntu(
                              color: Colors.black38,
                              fontSize: 15,
                              fontWeight: FontWeight.w300))
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const FaIcon(FontAwesomeIcons.buffer))
                ],
              ),
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Column(
                children: listModel1
                    .map((e) => Expanded(
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 35, vertical: 10),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: e.color?.withOpacity(0.16),
                                borderRadius: BorderRadius.circular(40)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(e.title!,
                                        style: GoogleFonts.ubuntu(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700)),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: Text(e.subTitle!,
                                          style: const TextStyle(
                                              fontSize: 14,
                                              color: Colors.black38)),
                                    ),
                                    Text(e.desc!,
                                        style: GoogleFonts.ubuntu(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                Stack(
                                  children: [
                                    SizedBox(
                                      height: 80,
                                      width: 80,
                                      child: CircularProgressIndicator(
                                        value: e.progess,
                                        color: e.color,
                                        strokeWidth: 6,
                                      ),
                                    ),
                                    SizedBox(
                                        height: 80,
                                        width: 80,
                                        child: Center(
                                          child: Text(
                                            "${(e.progess! * 100).toStringAsFixed(0)}%",
                                            style: GoogleFonts.ubuntu(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ))
                    .toList(),
              ),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FontAwesomeIcons.home,
                FontAwesomeIcons.dashcube,
                FontAwesomeIcons.satelliteDish,
                FontAwesomeIcons.periscope
              ]
                  .map((e) => IconButton(onPressed: () {}, icon: FaIcon(e)))
                  .toList(),
            ),
          ],
        ),
      )),
    );
  }
}
