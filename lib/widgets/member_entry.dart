import 'package:digitize_management_app/models/enums.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:digitize_management_app/models/member.dart';
import 'package:digitize_management_app/views/member_info_page.dart';

class MemberEntry extends StatefulWidget {
  Member member;
  MemberEntry(this.member, {Key? key}) : super(key: key);

  @override
  _MemberEntry createState() => _MemberEntry();
}

class _MemberEntry extends State<MemberEntry> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MemberInfo(widget.member),
            ));
      },
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://i.imgur.com/jZLM01T.png"),
            ),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "${widget.member.name[0]} ${widget.member.name[1]} ${widget.member.name[2]}",
              style: GoogleFonts.openSans(
                textStyle: const TextStyle(color: Colors.black87),
              ),
            ),
            Text(
              "${widget.member.year}  | ${widget.member.branch} | ${widget.member.role}",
              style: GoogleFonts.openSans(
                textStyle: const TextStyle(color: Colors.grey),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
