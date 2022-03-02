import 'package:copy/screens/HomeScreen.dart';
import 'package:copy/screens/profileSettingsScreen.dart';
import 'package:copy/screens/settingsScreen.dart';
import 'package:flutter/material.dart';

class ProfileSettingsScreen extends StatefulWidget {
  const ProfileSettingsScreen({Key? key}) : super(key: key);
  static const routeName = '/profile-settings-screen';

  @override
  State<ProfileSettingsScreen> createState() => _ProfileSettingsScreenState();
}

class _ProfileSettingsScreenState extends State<ProfileSettingsScreen> {
  int _currentIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Stack(
        children: [
          //    Container(
          //    width: double.infinity,
          //  height: MediaQuery.of(context).size.width * 0.1,
          //  ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.width * 1.75,
              child: Card(
                color: Colors.white.withOpacity(0.9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                margin: EdgeInsets.all(0),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    //   mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        //  mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Spacer(),
                          const Spacer(),
                          const Spacer(),
                          SizedBox(width: 5),
                          const Text(
                            'POINTS',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          const Spacer(),
                          Container(
                            width: 95,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                )),
                                backgroundColor: MaterialStateProperty.all(
                                  Colors.grey,
                                ),
                                textStyle: MaterialStateProperty.all(
                                  const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (ctx) {
                                    return AlertDialog(
                                      title: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          //  top: 10,
                                          //  bottom: 10,
                                        ),
                                        child: Column(
                                          children: const [
                                            Icon(
                                              Icons.monetization_on,
                                              color: Colors.amber,
                                              size: 70,
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Center(
                                              child: Text(
                                                'Do you want to redeem?',
                                                style: TextStyle(
                                                  fontSize: 18.1,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 17,
                                            ),
                                            Text(
                                              'Coins once returned will not be refunded',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      actions: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 6.0,
                                              right: 6.0,
                                            ),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5,
                                              height: 40,
                                              child: ElevatedButton(
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                    Colors.amber,
                                                  ),
                                                ),
                                                onPressed: () {
                                                  Navigator.pop(context);
////////////////////////////

                                                  showDialog(
                                                    context: context,
                                                    builder: (ctxx) {
                                                      return AlertDialog(
                                                        title: Icon(
                                                          Icons.monetization_on,
                                                          color: Colors.amber,
                                                          size: 50,
                                                        ),
                                                        content: Text(
                                                          'Withdraw!',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 18,
                                                          ),
                                                        ),
                                                        actions: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Center(
                                                              child: Container(
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    0.4,
                                                                height: 40,
                                                                child:
                                                                    ElevatedButton(
                                                                  style:
                                                                      ButtonStyle(
                                                                    backgroundColor:
                                                                        MaterialStateProperty
                                                                            .all(
                                                                      Colors
                                                                          .amber,
                                                                    ),
                                                                  ),
                                                                  onPressed:
                                                                      () {
                                                                    Navigator.pop(
                                                                        context);
                                                                  },
                                                                  child: Text(
                                                                      'Confirm'),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );

////////////////////////////
                                                },
                                                child: Text('Redeem'),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: const FittedBox(
                                child: Text(
                                  'REDEEM POINTS',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        //      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(),
                          SizedBox(width: 55),
                          Icon(
                            Icons.monetization_on,
                            color: Colors.amber,
                          ),
                          Text(
                            ' 500',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.5,
                            ),
                          ),
                          Spacer(),
                          Spacer(),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          'Profile Settings',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: CircleAvatar(
                          radius: 33,
                          backgroundImage:
                              AssetImage('assets/images/pImage.jpg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 7.0,
                          top: 13,
                        ),
                        child: Text(
                          'Name',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                      ),
                      Container(
                        height: 59,
                        child: Card(
                          elevation: 1.0,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'User Name',
                              //     prefixIcon: Icon(Icons.search),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 7.0,
                          top: 10,
                        ),
                        child: Text(
                          'Email',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                      ),
                      Container(
                        height: 59,
                        child: Card(
                          elevation: 1.0,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'Email',
                              //     prefixIcon: Icon(Icons.search),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 7.0,
                          top: 10,
                        ),
                        child: Text(
                          'Password',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                      ),
                      Container(
                        height: 59,
                        child: Card(
                          elevation: 1.0,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'Password',
                              //     prefixIcon: Icon(Icons.search),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 7.0,
                          top: 10,
                        ),
                        child: Text(
                          'Address',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                      ),
                      Container(
                        height: 59,
                        child: Card(
                          elevation: 1.0,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'Add Address',
                              //     prefixIcon: Icon(Icons.search),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 13),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 6.0,
                          right: 6.0,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 47,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                              Colors.amber,
                            )),
                            onPressed: () {},
                            child: Text('Save Changes'),
                          ),
                        ),
                      ),
                    ],
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

        if (index == 0) {
          Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
        }

        if (index == 2) {
          Navigator.of(context).pushReplacementNamed(SettingsScreen.routeName);
        }

        if (index == 1) {
          //   avigator.of(context).pushReplacementNamed(SettingsScreen.routeName);
        }

        if (index == 3) {
          //  Navigator.of(context).pushReplacementNamed(
          //    ProfileSettingsScreen.ProfileSettingsScreen.routeName);
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
