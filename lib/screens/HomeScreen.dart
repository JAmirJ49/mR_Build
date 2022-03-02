import 'package:awesome_card/awesome_card.dart';
import 'package:copy/screens/profileSettingsScreen.dart';
import 'package:copy/screens/settingsScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = 'home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.95),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.9,
        backgroundColor: Colors.amber,
        title: Text(
          'Home',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          CircleAvatar(
            radius: 22.5,
            backgroundImage: AssetImage('assets/images/pImage.jpg'),
            // child: Image.network(
            //   'https://images.pexels.com/photos/5411363/pexels-photo-5411363.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
          ),
          SizedBox(width: 10),
        ],
      ),
      drawer: Drawer(),
      body: Stack(
        children: [
          Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.amber,
                width: double.infinity,
                height: 190,
                child: Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Stack(
                    children: [
                      Row(
                        //      crossAxisAlignment: CrossAxisAlignment,
                        children: [
                          Text(
                            'Hi, William Johnas',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                          Spacer(),
                          Chip(
                            backgroundColor: Colors.black.withOpacity(0.5),
                            padding: EdgeInsets.all(0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            label: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  // margin: EdgeInsets.all(0),
                                  width: 20,
                                  height: 20,
                                  // color: Colors.black.withOpacity(0.5),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 17,
                                  ),
                                ),
                                Container(
                                  //   color: Colors.red,
                                  child: Text(
                                    'VIP',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 1),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 54, 51, 51),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    'Platinum',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 38,
                        left: -3,
                        child: Row(
                          //  mainAxisSize: MainAxisSize.min,

                          //    crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 19,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'San Francisco, California',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                                // color: Colors.black.withOpacity(0.7),
                                color: Color.fromARGB(255, 129, 129, 129),
                              ),
                            ),
                            SizedBox(
                              width: 77,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Chip(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                label: Text(
                                  'Reload',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 80,
                        child: Text(
                          'Total Balance',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                            color: Colors.black.withOpacity(0.8),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 100,
                        child: Text(
                          'RM 13.09',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 17,
                            color: Colors.black.withOpacity(0.85),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 145,
            left: 1,
            child: Container(
              width: 350,
              height: 168,
              child: CreditCard(
                  cardNumber: "**** **** **** 7854",
                  cardExpiry: " ****",
                  cardHolderName: " ",
                  cvv: "456",
                  bankName: "Membership ID",
                  cardType: CardType
                      .masterCard, // Optional if you want to override Card Type
                  showBackSide: false,
                  frontBackground: CardBackgrounds.black,
                  backBackground: CardBackgrounds.white,
                  //   showShadow: true,
                  textExpDate: 'Exp. Date',
                  //   textName: 'Name',
                  textExpiry: 'MM/YY'),
            ),
          ),
          Positioned(
            top: 340,
            left: 23.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tracking Laundry Flow Process',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 160,
                      height: 110,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(23.0),
                          child: Column(
                            children: [
                              Icon(
                                Icons.print_rounded,
                                color: Colors.grey,
                              ),
                              SizedBox(height: 15),
                              Text(
                                'Laundry Process',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  //  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 160,
                      height: 110,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(23.0),
                          child: Column(
                            children: [
                              Icon(
                                Icons.dry_cleaning_outlined,
                                color: Colors.grey,
                              ),
                              SizedBox(height: 15),
                              Text(
                                'Dry Cleaning',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 160,
                      height: 110,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(23.0),
                          child: Column(
                            children: [
                              Icon(
                                Icons.iron_outlined,
                                color: Colors.grey,
                              ),
                              SizedBox(height: 15),
                              Text(
                                'Ironing',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  //  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 160,
                      height: 110,
                      child: Card(
                        //    margin: EdgeInsets.a,
                        color: Colors.white.withOpacity(0.7),
                        child: Padding(
                          padding: const EdgeInsets.all(23.0),
                          child: Column(
                            children: [
                              Icon(
                                Icons.directions_railway_rounded,
                                color: Colors.grey,
                              ),
                              SizedBox(height: 15),
                              Text(
                                'Drying',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
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
          Navigator.of(context).pushReplacementNamed(SettingsScreen.routeName);
        }

        if (index == 1) {
          //   avigator.of(context).pushReplacementNamed(SettingsScreen.routeName);
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
