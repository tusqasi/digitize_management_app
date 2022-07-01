import 'package:flutter/material.dart';
import 'package:digitize_management_app/widgets/topbar.dart';
import 'package:digitize_management_app/widgets/bottombar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Home"),
        ),
        bottomNavigationBar: BottomBar(),
        body: ListView(
          padding: EdgeInsets.all(5),
          children: const [
            Text("Today"),
            // Todays items
            ListTile(
              leading: Icon(Icons.groups_outlined),
              title: Text("Pakshi Mitra"),
              subtitle: Text("08:00 AM"),
            ),
            ListTile(
              leading: Icon(Icons.task_alt_outlined),
              title: Text("Take Photo, Drop Paper"),
              subtitle: Text("11:00 AM"),
            ),
            Divider(indent: 10, endIndent: 10),
            Text("Notification"),
            // All notification items
            ListTile(
              leading: Icon(Icons.newspaper),
              title: Text(
                  "Everyone is requested to wear white color clothes at the event"),
              subtitle: Text("11AM | 25 Feb | Basketball Court "),
            ),
            ListTile(
              leading: Icon(Icons.poll_outlined),
              title: Text("What time do you prefer for meets in general?"),
              subtitle: Text("11:00 AM"),
            ),
            ListTile(
              leading: Icon(Icons.groups_outlined),
              title: Text("Pakshi Mitra"),
              subtitle: Text("11:00 AM"),
            ),
          ],
        ));
  }
}
