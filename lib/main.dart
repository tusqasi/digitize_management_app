import 'package:flutter/material.dart';
import 'package:digitize_management_app/views/create_poll.dart';
import 'package:provider/provider.dart';
import 'package:digitize_management_app/utils/digitize_theme.dart';
import 'package:digitize_management_app/models/option_data.dart';
import 'package:digitize_management_app/models/question_data.dart';
import 'package:digitize_management_app/models/poll_data.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [

        ChangeNotifierProvider(create: (_) => PollsData()),
        ChangeNotifierProvider(create: (_) => OptionsData()),
        ChangeNotifierProvider(create: (_) => QuestionData()),
      ],
      child: MaterialApp(
        title: "Digitize",
        home: const CreatePollPage(),
        theme: digitizeTheme(),
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}
