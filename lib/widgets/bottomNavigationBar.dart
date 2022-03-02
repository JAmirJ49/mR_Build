import 'package:copy/screens/settingsScreen.dart';
import 'package:flutter/material.dart';

class bottomNavigationBar extends StatefulWidget {
  const bottomNavigationBar(
      {Key? key,
      required int currentIndex,
      required int selectedFontSize,
      required MaterialColor selectedItemColor,
      required MaterialColor unselectedItemColor,
      required BottomNavigationBarType type,
      required double elevation,
      required List<BottomNavigationBarItem> items,
      required Null Function(dynamic index) onTap})
      : super(key: key);

  @override
  State<BottomNavigationBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) {
        _currentIndex = index;
        print(index);
        setState(() {});

        if (index == 2) {
          Navigator.of(context).pushNamed(SettingsScreen.routeName);
        }
      },

      currentIndex: _currentIndex,
      selectedFontSize: 12,
      //  unselectedFontSize: 10,
      selectedItemColor: Colors.amber,
      unselectedItemColor: Colors.red,

      type: BottomNavigationBarType.shifting,
      elevation: 0.9,
      //   backgroundColor: Colors.amber,
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(
            Icons.home_outlined,
            color: _currentIndex == 0 ? Colors.amber : Colors.grey,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Notifications',
          icon: Icon(
            Icons.notifications_none_rounded,
            color: _currentIndex == 1 ? Colors.amber : Colors.grey,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Settings',
          icon: Icon(
            Icons.settings_outlined,
            color: _currentIndex == 2 ? Colors.amber : Colors.grey,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Account',
          icon: Icon(
            Icons.account_circle_outlined,
            color: _currentIndex == 3 ? Colors.amber : Colors.grey,
          ),
        ),
      ],
    );
  }
}
