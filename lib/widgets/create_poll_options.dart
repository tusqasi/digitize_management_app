import 'package:flutter/foundation.dart';
import 'package:digitize_management_app/models/option_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:math';

class PollOptions extends StatefulWidget {
  FocusNode addOptionFocus;
  PollOptions(this.addOptionFocus, {Key? key}) : super(key: key);

  @override
  _PollOptionsState createState() => _PollOptionsState();
}

class _PollOptionsState extends State<PollOptions> {
  int selectedRadio = 0;
  var rand = Random();

  var textController = TextEditingController();
  var scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    selectedRadio = 1;
    Provider.of<OptionsData>(context, listen: false).options.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView(
        controller: scrollController,
        children: [
          Consumer<OptionsData>(
            builder: (context, provider, child) {
              if (provider.options.isNotEmpty) {
                // scrollController.animateTo(
                //   scrollController.position.maxScrollExtent ?? 10,
                //   duration: const Duration(
                //     milliseconds: 100,
                //   ),
                //   curve: Curves.easeInExpo,
                // );
                return Column(
                  /// makes a list of RadioListTile from a options list
                  children: provider.options
                      .map(
                        (option) => RadioListTile(
                          groupValue: 1,
                          value: 0,
                          // dense: true,
                          onChanged: (v) {},
                          title: Text(
                            option,
                          ),
                          secondary: GestureDetector(
                            onTap: () {
                              provider.remove(option);
                              setState(() {});
                            },
                            child: const Icon(
                              Icons.close,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                );
              } else {
                return Container(height: 10);
              }
            },
          ),
          // Add option tile
          RadioListTile(
            selected: false,
            groupValue: 1,
            value: 0,
            onChanged: (v) {
              setState(() {
                if (kDebugMode) print("Pressed on the radio button");
              });
            },
            title: TextField(
              focusNode: widget.addOptionFocus,
              controller: textController,
              onEditingComplete: () {
                if (textController.text.isNotEmpty) {
                  Provider.of<OptionsData>(context, listen: false)
                      .add(textController.text);

                  if (kDebugMode) {
                    print("Editing completed / pressed submit button");
                  }
                  setState(() {});
                }
                textController.clear();
              },
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Add option",
              ),
              style: const TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
