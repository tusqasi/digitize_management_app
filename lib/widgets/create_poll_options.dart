import 'package:flutter/foundation.dart';
import 'package:digitize_management_app/models/option_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:math';

class PollOptions extends StatefulWidget {
  const PollOptions({Key? key}) : super(key: key);

  @override
  _PollOptionsState createState() => _PollOptionsState();
}

class _PollOptionsState extends State<PollOptions> {
  int selectedRadio = 0;
  var rand = Random();

  var textController = TextEditingController();
  @override
  void initState() {
    super.initState();
    selectedRadio = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...Provider.of<OptionsData>(context).options.map(
              (e) => RadioListTile(
                groupValue: 1,
                value: 0,
                // dense: true,
                onChanged: (v) {},
                title: Text(
                  e,
                ),
                secondary: GestureDetector(
                  onTap: () {
                    Provider.of<OptionsData>(context, listen: false)
                        .options
                        .remove(e);
                    setState(() {});
                  },
                  child: const Icon(
                    Icons.close,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
        RadioListTile(
          selected: false,
          // contentPadding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
          groupValue: 1,
          value: 0,
          // dense: true,

          onChanged: (v) {
            setState(() {
              if (kDebugMode) {
                Provider.of<OptionsData>(context, listen: false)
                    .options
                    .add(rand.nextInt(10).toString());
              }
            });
          },
          title: TextField(
            controller: textController,
            onEditingComplete: () {
              print(textController.text);
              if (textController.text.isNotEmpty) {
                Provider.of<OptionsData>(context, listen: false)
                    .options
                    .add(textController.text);
              }
            },
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Add option",
            ),
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
