import 'package:flutter/material.dart';

class PollMultipleOptions extends StatefulWidget {
  const PollMultipleOptions({Key? key}) : super(key: key);

  @override
  _PollMultipleOptionsState createState() => _PollMultipleOptionsState();
}

class _PollMultipleOptionsState extends State<PollMultipleOptions> {
  int selectedRadio = 0;

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
        for (int i = 1; i < 5; i++)
          CheckboxListTile(
            secondary: const Icon(Icons.close_sharp),
            value: i % 2 == 0,
            onChanged: (v) {
              setState(() {
                selectedRadio = int.parse(v.toString());
              });
            },
            title: Text("Option $i"),
          ),
        CheckboxListTile(
          selected: false,
          contentPadding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
          value: true,
          // dense: true,
          onChanged: (v) {},
          title: const Text(
            "Add option",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
