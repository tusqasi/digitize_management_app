import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:digitize_management_app/models/poll_data.dart';
import 'package:digitize_management_app/models/question_data.dart';
import 'package:digitize_management_app/models/option_data.dart';

class DigitizeAppBar extends StatefulWidget {
  // late final FocusNode addOptionFocus;
  late final List<Widget> actions;
  late final String title;
  final IconData? leadingIcon;
  DigitizeAppBar(
      {this.leadingIcon,
      required this.title,
      this.actions = const [],
      Key? key})
      : super(key: key);

  @override
  _DigitizeAppBarState createState() => _DigitizeAppBarState();
}

class _DigitizeAppBarState extends State<DigitizeAppBar> {
  @override
  Widget build(BuildContext context) {
    if (widget.leadingIcon == null) {
      return AppBar(
        actions: widget.actions,
        title: Text(
          widget.title,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: Colors.black),
        ),
      );
    }

    return AppBar(
      leading: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Icon(
          Icons.arrow_back,
        ),
      ),
      actions: widget.actions,
      title: Text(
        widget.title,
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(color: Colors.black),
      ),
    );
  }
}
