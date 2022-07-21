import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  // Constructor

  void onTap(x) async {
    if (x == 2) {
      /// Tapped the Create button
      showModalBottomSheet(
        backgroundColor: Theme.of(context).backgroundColor,
        context: context,
        clipBehavior: Clip.antiAlias,
        builder: (BuildContext context) {
          return const BottomSheets();
        },
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
      );
    }
  }

  _BottomBarState();
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
      onTap: (e) => onTap(e),
    );
  }
}

class BottomSheets extends StatelessWidget {
  const BottomSheets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16),
              child: Text("Select action",
                  style: Theme.of(context).textTheme.headlineSmall),
            ),
            BottomSheetItem(
              icon: Icons.task_alt_sharp,
              title: "Assign Tasks",
              onTap: () {
                if (kDebugMode) {
                  print("yeayi sif");
                }
              },
            ),
            BottomSheetItem(
              icon: Icons.poll_outlined,
              title: "Take a poll",
              onTap: () {
                if (kDebugMode) {
                  print("You are now taking a poll");
                }
                Navigator.popAndPushNamed(context, '/polls').then((event) {
                  /// this callback seems to be called only when back button is pessed
                  print("In bottom bar future callback");
                  print(event);
                });
              },
            ),
            BottomSheetItem(
              icon: Icons.group_outlined,
              title: "Schedule a meeting",
              onTap: () {
                if (kDebugMode) {
                  print("yeay 4ĸk");
                }
              },
            ),
            BottomSheetItem(
              icon: Icons.campaign_outlined,
              title: "Make an annoucement",
              onTap: () {
                if (kDebugMode) {
                  print("yeay 3");
                }
              },
            ),
            const Divider(),
          ],
        ),
        GestureDetector(
          child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Text(
                "Cancel",
                style: Theme.of(context).textTheme.caption?.copyWith(
                      fontSize: 20,
                      color: Colors.red,
                    ),
              )),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}

void voider() {
  if (kDebugMode) {
    print("You have succussphully reachede voider");
  }
}

class BottomSheetItem extends StatefulWidget {
  late IconData icon;
  late String title;
  Function onTap;
  BottomSheetItem({
    this.icon = Icons.poll,
    this.title = "",
    this.onTap = voider,
    Key? key,
  }) : super(key: key);

  @override
  State<BottomSheetItem> createState() => _BottomSheetItemState();
}

class _BottomSheetItemState extends State<BottomSheetItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onTap(),
      child: ListTile(
        iconColor: Theme.of(context).primaryColor,
        title: Text(widget.title),
        leading: Icon(widget.icon),
      ),
    );
  }
}
