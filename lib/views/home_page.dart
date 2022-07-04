import 'package:flutter/material.dart';
import 'package:digitize_management_app/utils/to_color.dart';
import 'package:digitize_management_app/widgets/topbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:digitize_management_app/widgets/bottombar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> notifications = [
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
    // TODO: implement initState
    super.initState();
    notifications = notifications + notifications;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Home",
            style: GoogleFonts.roboto(
              textStyle: Theme.of(context).textTheme.headline6,
            ),
          ),
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1.0),
            child: Container(
              height: 1.0,
              color: Colors.grey[400],
            ),
          ),
        ),
        bottomNavigationBar: BottomBar(
          (x) {
            print(x + 100);
          },
        ),
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
            ...notifications,
          ],
        ));
  }
}
