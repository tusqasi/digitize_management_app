import 'package:flutter/material.dart';
import 'package:digitize_management_app/models/member.dart';
import 'package:digitize_management_app/models/enums.dart';

class MemberInfo extends StatefulWidget {
  Member member;
  MemberInfo(this.member, {Key? key}) : super(key: key);

  @override
  _MemberInfoState createState() => _MemberInfoState();
}

class _MemberInfoState extends State<MemberInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${widget.member.name}")),
      body: Text("${widget.member.name}"),
    );
  }
}
