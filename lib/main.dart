import 'package:flutter/material.dart';
import 'package:digitize_management_app/views/create_poll.dart';
import 'package:digitize_management_app/views/home_page.dart';
import 'package:provider/provider.dart';
import 'package:digitize_management_app/utils/digitize_theme.dart';
import 'package:digitize_management_app/models/option_data.dart';
import 'package:digitize_management_app/models/question_data.dart';
import 'package:digitize_management_app/models/poll_data.dart';
import 'package:digitize_management_app/models/enums.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PollsData()),
        ChangeNotifierProvider(create: (_) => OptionsData()),
        ChangeNotifierProvider(create: (_) => QuestionData()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // onGenerateRoute: (settings) {
      //   print(settings);
      //   switch (settings.name) {
      //     case '/':
      //       return MaterialPageRoute(builder: (context) => HomePage());
      //     case '/polls':
      //       return MaterialPageRoute(builder: (context) => CreatePollPage());
      //
      //     default:
      //       return MaterialPageRoute(
      //           builder: (context) => Scaffold(
      //                 body: Text("Unknow route"),
      //               ));
      //   }
      // },
      title: "Digitize",
      initialRoute: "/home",
      theme: digitizeTheme(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => HomePage(),
        '/polls': (context) => CreatePollPage(),
      },
    );
  }
}
