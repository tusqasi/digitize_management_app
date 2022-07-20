import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:digitize_management_app/models/option_data.dart';
import 'package:digitize_management_app/models/question_data.dart';
import 'package:digitize_management_app/models/poll_data.dart';
import 'package:digitize_management_app/widgets/create_poll_question.dart';
import 'package:digitize_management_app/widgets/create_poll_options.dart';
import 'package:digitize_management_app/widgets/create_poll_options_multiple.dart';
import 'package:provider/provider.dart';

class CreatePollPage extends StatefulWidget {
  const CreatePollPage({Key? key}) : super(key: key);

  @override
  _CreatePollPageState createState() => _CreatePollPageState();
}

class _CreatePollPageState extends State<CreatePollPage> {
  bool multiple = true;
  late FocusNode addOptionFocus = FocusNode();
  late FocusNode questionFocus = FocusNode();
  String title = "Create Poll";
  @override
  void initState() {
    super.initState();
    multiple = true;
  }

  @override
  void dispose() {
    addOptionFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size(50, 50),
          child: AppBar(
            title: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: Colors.black),
            ),
            actions: [
              // ✅ Ok button
              IconButton(
                icon: const Icon(Icons.done),
                onPressed: () {
                  String question =
                      Provider.of<QuestionData>(context, listen: false)
                          .question;
                  List<String> options =
                      Provider.of<OptionsData>(context, listen: false).options;

                  if (question == '') {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('No question added. Put a question.')),
                    );
                    questionFocus.requestFocus();
                    return;
                  } else if (options.isEmpty) {
                    addOptionFocus.requestFocus();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content:
                              Text('No options added. Put some options in.')),
                    );
                    return;
                  }
                  Provider.of<PollsData>(context, listen: false)
                      .add(question: question, options: options);
                  Provider.of<OptionsData>(context, listen: false)
                      .options
                      .clear();
                  Navigator.popAndPushNamed(context, '/home');
                },
              ),
            ],
          )),
      body: Container(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PollQuestion(
                addOptionFocus: addOptionFocus, questionFocus: questionFocus),
            multiple
                ? PollMultipleOptions(addOptionFocus)
                : PollOptions(addOptionFocus),

            /// Single multiple switch
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
          ],
        ),
      ),
    );
  }
}
