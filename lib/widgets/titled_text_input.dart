import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TitledTextInput extends StatefulWidget {
  final String title;

  /// This shows up in the text input field
  final String hintText;

  /// When title is completed, go to this focus node
  final FocusNode gotoOnComplete;

  /// Focus for the title.
  final FocusNode titleFocus;

  /// Put title in this provider
  final updateProvider;
  TitledTextInput({
    required this.title,
    required this.hintText,
    required this.gotoOnComplete,
    required this.titleFocus,
    required this.updateProvider,
    Key? key,
  }) : super(key: key);

  @override
  _TitledTextInputState createState() => _TitledTextInputState();
}

class _TitledTextInputState extends State<TitledTextInput> {
  _TitledTextInputState();
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: Theme.of(context).textTheme.headline5,
        ),
        TextField(
            autofocus: true,
            focusNode: widget.titleFocus,
            controller: textController,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: widget.hintText,
            ),
            onEditingComplete: () {
              widget.updateProvider.value = textController.text;
              widget.gotoOnComplete.requestFocus();
            }),
      ],
    );
  }
}
