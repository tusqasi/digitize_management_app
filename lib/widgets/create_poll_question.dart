import 'package:digitize_management_app/models/question_data.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PollQuestion extends StatefulWidget {
  const PollQuestion({Key? key}) : super(key: key);

  @override
  _PollQuestionState createState() => _PollQuestionState();
}

class _PollQuestionState extends State<PollQuestion> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "What is your question?",
          style: Theme.of(context).textTheme.headline5,
        ),
        TextField(
            controller: textController,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: "Question...",
            ),
            onEditingComplete: () {
              if (kDebugMode) {
                print("updating question to: ${textController.text}");
              }
              Provider.of<QuestionData>(context, listen: false).question =
                  textController.text;
            }),
      ],
    );
  }
}
