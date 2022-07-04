import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  late Function OnTap;
  BottomBar(this.OnTap, {Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState(OnTap);
}

class _BottomBarState extends State<BottomBar> {
  late Function OnTap;
  // Constructor
  _BottomBarState(Function OnTap);
  //
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(
            Icons.home_outlined,
          ),
        ),
        BottomNavigationBarItem(
          label: "Tasks",
          icon: Icon(
            Icons.task_alt_outlined,
          ),
        ),
        BottomNavigationBarItem(
          label: "Create",
          icon: Icon(
            Icons.add_circle_outlined,
          ),
        ),
        BottomNavigationBarItem(
          label: "Eventsr",
          icon: Icon(
            Icons.event_outlined,
          ),
        ),
        BottomNavigationBarItem(
          label: "You",
          icon: Icon(
            Icons.person,
          ),
        ),
      ],
      onTap: (e) => OnTap(e),
    );
  }
}
