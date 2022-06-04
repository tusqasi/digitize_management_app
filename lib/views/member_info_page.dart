import 'package:flutter/material.dart';
import 'package:digitize_management_app/views/member_list_page.dart';

class MemberInfo extends StatefulWidget {
  MemberInfo({Key? key}) : super(key: key);

  @override
  _MemberInfoState createState() => _MemberInfoState();
}

class _MemberInfoState extends State<MemberInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MemberInfo")),
      body: Column(
        children: [
          FloatingActionButton(
            child: const Icon(Icons.flutter_dash_sharp),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MemberList()),
              );
            },
          )
        ],
      ),
    );
  }
}
