import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/modules/settings/settings_view.dart';
import 'package:todo_app/modules/tasks/tasks_view.dart';

class LayoutView extends StatefulWidget {
  LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int currentIndex = 0;
  List<Widget> screens =[
    TasksView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 2,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        onPressed: () {},
        child: CircleAvatar(
          radius: 25,
          backgroundColor: theme.primaryColor,
          child: Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 93,
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 15,
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/tasks_list.png")),
                label: "Tasks"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/settings_icn.png")),
                label: "Settings")
          ],
        ),
      ),
      body: screens[currentIndex],
    );
  }
}
