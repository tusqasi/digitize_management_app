import 'package:digitize_management_app/models/option_data.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PollMultipleOptions extends StatefulWidget {
  final FocusNode addOptionFocus;
  const PollMultipleOptions(this.addOptionFocus, {Key? key}) : super(key: key);

  @override
  _PollMultipleOptionsState createState() => _PollMultipleOptionsState();
}

class _PollMultipleOptionsState extends State<PollMultipleOptions> {
  int selectedRadio = 0;
  final textController = TextEditingController();
  // final  = TextEditingController();

  @override
  void initState() {
    super.initState();
    selectedRadio = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ListView(
      // controller: scrollController,
      children: [
        Consumer<OptionsData>(
          builder: (context, provider, child) {
            if (provider.options.isNotEmpty) {
              return Column(
                /// makes a list of Checkbox tiles from a options list
                children: provider.options
                    .map(
                      (option) => CheckboxListTile(
                        value: false,
                        onChanged: (v) {},
                        title: Text(
                          option,
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        // the cross button
                        secondary: GestureDetector(
                          child: const Icon(
                            Icons.close,
                            color: Colors.grey,
                          ),
                          onTap: () {
                            provider.remove(option);
                            setState(() {});
                          },
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
        CheckboxListTile(
          value: false,
          controlAffinity: ListTileControlAffinity.leading,
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
    ));
  }
}
