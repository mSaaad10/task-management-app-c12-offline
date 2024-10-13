import 'package:flutter/material.dart';

import 'tabs/settings_tab/Settings_tab.dart';
import 'tabs/tasks_tab/tasks_tab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> tabs = [
    TasksTab(),
    SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const Text('ToDo List'),
      ),
      floatingActionButton: buildFab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: buildBottomNavBar(),

      body: tabs[selectedIndex], // 1
    );
  }

  Widget buildFab() => FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      );

  Widget buildBottomNavBar() => BottomAppBar(
        notchMargin: 8,
        child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: onBottomNavBarTabClicked,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.list,
                  ),
                  label: 'Tasks'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Settings'),
            ]),
      );

  void onBottomNavBarTabClicked(int index) {
    selectedIndex = index;
    setState(() {});
  }
}
