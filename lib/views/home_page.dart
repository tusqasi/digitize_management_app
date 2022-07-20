import 'package:flutter/material.dart';
import 'package:digitize_management_app/utils/to_color.dart';
import 'package:digitize_management_app/widgets/bottombar.dart';
import 'package:digitize_management_app/models/poll_data.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = 'Home';
  final List notifications = [
    const ListTile(
      leading: Icon(Icons.newspaper),
      title: Text(
          "Everyone is requested to wear white color clothes at the event"),
      subtitle: Text("11AM | 25 Feb | Basketball Court "),
    ),
    const ListTile(
      leading: Icon(Icons.poll_outlined),
      title: Text("What time do you prefer for meets in general?"),
      subtitle: Text("11:00 AM"),
    ),
    const ListTile(
        leading: Icon(Icons.groups_outlined),
        title: Text("Pakshi Mitra"),
        subtitle: Text("11:00 AM")),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(50, 50),
          child: AppBar(
            title: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: Colors.black),
            ),
          ),
        ),
        bottomNavigationBar: BottomBar(),
        body: ListView(
          padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
          children: [
            Text(
              "Today",
              style: TextStyle(
                color: "#023e8a".toColor(),
              ),
            ),
            // Todays items
            const ListTile(
              leading: Icon(Icons.groups_outlined),
              title: Text("Pakshi Mitra"),
              subtitle: Text("08:00 AM"),
            ),
            const ListTile(
              leading: Icon(Icons.task_alt_outlined),
              title: Text("Take Photo, Drop Paper"),
              subtitle: Text("11:00 AM"),
            ),
            const Divider(indent: 10, endIndent: 10),
            Text("Notification",
                style: TextStyle(
                  color: "#023e8a".toColor(),
                )),
            // All notification items
            Consumer<PollsData>(builder: (context, pollsData, child) {
              return Column(
                children: <Widget>[
                  ...notifications,
                  ...pollsData.polls.map((poll) {
                    return ListTile(
                        leading: Icon(Icons.people_outline),
                        title: Text(
                          poll.question,
                        ),
                        subtitle: Text('Poll'));
                  }).toList()
                ],
              );
            }),
          ],
        ));
  }
}
