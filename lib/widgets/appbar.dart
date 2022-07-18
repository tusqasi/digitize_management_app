import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:digitize_management_app/models/poll_data.dart';
import 'package:digitize_management_app/models/question_data.dart';
import 'package:digitize_management_app/models/option_data.dart';

class DigitizeAppBar extends StatefulWidget {
  // late final FocusNode addOptionFocus;
  late final List<Widget> actions;
  DigitizeAppBar({this.actions = const [], Key? key}) : super(key: key);

  @override
  _DigitizeAppBarState createState() => _DigitizeAppBarState();
}

class _DigitizeAppBarState extends State<DigitizeAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(
        Icons.arrow_back,
      ),
      actions: widget.actions,
      title: Text(
        "Create Poll",
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(color: Colors.black),
      ),
    );
  }
}
