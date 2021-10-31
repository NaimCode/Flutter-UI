import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/Finance%201/model.dart';

class Discussion extends StatefulWidget {
  const Discussion({Key? key}) : super(key: key);

  @override
  _DiscussionState createState() => _DiscussionState();
}

class _DiscussionState extends State<Discussion> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Discussion',
                        style: GoogleFonts.ubuntu(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    IconButton(
                        onPressed: () {},
                        icon: const FaIcon(FontAwesomeIcons.ellipsisV))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                            child: TextField(
                              decoration: InputDecoration(
                                  suffix: FaIcon(
                                    FontAwesomeIcons.search,
                                    color: Colors.grey,
                                  ),
                                  border: InputBorder.none,
                                  hintText: "Recherche"),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: listchat
                  .map((e) => ItemChat(
                        e: e,
                      ))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}

class ItemChat extends StatelessWidget {
  final Chat? e;
  const ItemChat({
    this.e,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        onTap: () {},
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(e!.images!),
        ),
        title: Text(e!.sender!,
            style:
                GoogleFonts.ubuntu(fontSize: 20, fontWeight: FontWeight.bold)),
        subtitle: Text(
          e!.lastMessage!,
          style: GoogleFonts.ubuntu(color: Colors.grey),
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(e!.date!,
                style:
                    GoogleFonts.poppins(fontSize: 10, color: Colors.grey[400])),
            const SizedBox(
              height: 10,
            ),
            e!.vue!
                ? Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      FaIcon(
                        FontAwesomeIcons.check,
                        size: 7,
                        color: Colors.blue,
                      ),
                      FaIcon(
                        FontAwesomeIcons.check,
                        size: 8,
                        color: Colors.blue,
                      )
                    ],
                  )
                : const FaIcon(
                    FontAwesomeIcons.check,
                    size: 8,
                    color: Colors.white,
                  )
          ],
        ),
      ),
    );
  }
}
