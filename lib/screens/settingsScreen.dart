import 'package:copy/screens/HomeScreen.dart';
import 'package:copy/screens/profileSettingsScreen.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  static const routeName = '/settings-screen';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  int _currentIndex = 2;

  final style = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.black.withOpacity(0.5),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        foregroundColor: Colors.black.withOpacity(0.65),
        backgroundColor: Colors.white54,
        title: const Text('Settings'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(
              'William Jonas',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
            subtitle: Text('jonas@gmail.com'),
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: AssetImage('assets/images/pImage.jpg'),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 7),
              child: ListTile(
                title: Text('Membership Level', style: style),
                //   subtitle: Text('jonas@gmail.com'),
                trailing: Text(
                  'Bronze',
                  style: TextStyle(
                    fontSize: 12.4,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
                leading: Container(
                  width: 42,
                  height: 40,
                  padding: EdgeInsets.all(7),
                  color: Colors.grey.withOpacity(0.5),
                  child: Icon(
                    Icons.calendar_view_day_rounded,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
              child: ListTile(
                title: Text('Personal settings', style: style),
                //   subtitle: Text('jonas@gmail.com'),

                leading: Container(
                  width: 42,
                  height: 40,
                  padding: EdgeInsets.all(7),
                  color: Colors.grey.withOpacity(0.5),
                  child: Icon(
                    Icons.person_outline,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
              child: ListTile(
                title: Text(
                  'Payment settings',
                  style: style,
                ),
                //   subtitle: Text('jonas@gmail.com'),

                leading: Container(
                  width: 42,
                  height: 40,
                  padding: EdgeInsets.all(7),
                  color: Colors.grey.withOpacity(0.5),
                  child: Icon(
                    Icons.payment,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
              child: ListTile(
                title: Text(
                  'Language settings',
                  style: style,
                ),
                //   subtitle: Text('jonas@gmail.com'),

                leading: Container(
                  width: 42,
                  height: 40,
                  padding: EdgeInsets.all(7),
                  color: Colors.grey.withOpacity(0.5),
                  child: Icon(
                    Icons.blur_circular_rounded,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
              child: ListTile(
                title: Text(
                  'Referral code',
                  style: style,
                ),
                //   subtitle: Text('jonas@gmail.com'),

                leading: Container(
                  width: 42,
                  height: 40,
                  padding: EdgeInsets.all(7),
                  color: Colors.grey.withOpacity(0.5),
                  child: Icon(
                    Icons.balance_outlined,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
              child: ListTile(
                title: Text(
                  'Order Detail',
                  style: style,
                ),
                //   subtitle: Text('jonas@gmail.com'),

                leading: Container(
                  width: 42,
                  height: 40,
                  padding: EdgeInsets.all(7),
                  color: Colors.grey.withOpacity(0.5),
                  child: Icon(
                    Icons.timer_outlined,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
              child: ListTile(
                title: Text('Book pick up', style: style),
                //   subtitle: Text('jonas@gmail.com'),

                leading: Container(
                  width: 42,
                  height: 40,
                  padding: EdgeInsets.all(7),
                  color: Colors.grey.withOpacity(0.5),
                  child: Icon(
                    Icons.flag_outlined,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
              child: ListTile(
                title: Text('Privacy information', style: style),
                //   subtitle: Text('jonas@gmail.com'),

                leading: Container(
                  width: 42,
                  height: 40,
                  padding: EdgeInsets.all(7),
                  color: Colors.grey.withOpacity(0.5),
                  child: Icon(
                    Icons.security,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  BottomNavigationBar BottomNavBar() {
    return BottomNavigationBar(
      onTap: (index) {
        _currentIndex = index;
        print(index);

        if (index == 2) {
          //    Navigator.of(context).pushReplacementNamed(SettingsScreen.routeName);
        }

        if (index == 0) {
          Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
        }

        if (index == 3) {
          Navigator.of(context)
              .pushReplacementNamed(ProfileSettingsScreen.routeName);
        }

        setState(() {});
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
