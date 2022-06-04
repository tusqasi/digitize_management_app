import 'package:flutter/material.dart';
import 'package:digitize_management_app/widgets/member_entry.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:digitize_management_app/models/enums.dart';
import 'package:digitize_management_app/models/member.dart';

class MemberList extends StatefulWidget {
  late List<Member> members;

  MemberList(this.members, {Key? key}) : super(key: key);

  @override
  _MemberListState createState() => _MemberListState();
}

class _MemberListState extends State<MemberList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "MemberList",
          style: GoogleFonts.openSans(
            textStyle: const TextStyle(fontSize: 20),
          ),
        )),
        body: Column(
            children: [for (var mem in widget.members) MemberEntry(mem)]));
  }
}
