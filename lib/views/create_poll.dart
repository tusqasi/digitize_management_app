import 'package:digitize_management_app/main.dart';
import 'package:digitize_management_app/models/option_data.dart';
import 'package:digitize_management_app/models/question_data.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:digitize_management_app/widgets/create_poll_question.dart';
import 'package:digitize_management_app/widgets/create_poll_options_multiple.dart';
import 'package:digitize_management_app/widgets/create_poll_options.dart';
import 'package:provider/provider.dart';

class CreatePollPage extends StatefulWidget {
  const CreatePollPage({Key? key}) : super(key: key);

  @override
  _CreatePollPageState createState() => _CreatePollPageState();
}

class _CreatePollPageState extends State<CreatePollPage> {
  bool multiple = false;

  @override
  void initState() {
    super.initState();
    multiple = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.done),
            onPressed: () {
              if (kDebugMode) {
                print(Provider.of<OptionsData>(context, listen: false).options);
                print(
                    Provider.of<QuestionData>(context, listen: false).question);
              }
            },
          ),
        ],
        title: Text(
          "Create Poll",
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: Colors.black),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PollQuestion(),
            Row(
              children: [
                const Text("Single | Multiple"),
                Switch(
                  value: multiple,
                  onChanged: (v) {
                    setState(() {
                      multiple = v;
                    });
                  },
                ),
              ],
            ),
            multiple ? PollMultipleOptions() : PollOptions(),
          ],
        ),
      ),
    );
  }
}
