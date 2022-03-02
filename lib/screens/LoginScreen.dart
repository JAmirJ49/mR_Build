import 'package:auth_buttons/auth_buttons.dart';
import 'package:copy/screens/HomeScreen.dart';
import 'package:copy/screens/RegisterScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const routeName = 'login-screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //  backgroundColor: Colors.white.withOpacity(0.989),
        body: Padding(
          padding: const EdgeInsets.all(23.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/splashLogoYellowRBG.png',
                    scale: 3,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Sign in to continue',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.8),
                    fontWeight: FontWeight.w500,
                    fontSize: 16.5,
                  ),
                ),
                SizedBox(height: 20),
                Card(
                  elevation: 2.0,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Username',
                      //     prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  elevation: 2.0,
                  child: TextFormField(
                    obscureText: obscureText,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Password',
                      suffixIcon: IconButton(
                        color: Colors.grey,
                        onPressed: () {
                          obscureText = !obscureText;
                          setState(() {});
                        },
                        icon: Icon(
                          obscureText
                              ? Icons.remove_red_eye
                              : Icons.panorama_fish_eye_outlined,
                        ),
                        //
                        // obscureText
                        //     ? Icons.remove_red_eye
                        //     : Icons.panorama_fish_eye_outlined,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 6,
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacementNamed(RegisterScreen.routeName);
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: Container(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.amber),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed(HomeScreen.routeName);
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 26),
                Center(
                  child: Text(
                    'Or',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black.withOpacity(0.5),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '------------------- Continue with -------------------',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black.withOpacity(0.5),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    GoogleAuthButton(
                      text: 'Google',
                      onPressed: () {},
                      darkMode: false,
                      style: AuthButtonStyle(
                        iconType: AuthIconType.secondary,
                      ),
                    ),
                    Spacer(),
                    FacebookAuthButton(
                      text: 'Facebook',
                      onPressed: () {},
                      darkMode: false,
                      style: AuthButtonStyle(
                        // width: 157,
                        //   buttonType: AuthButtonType.icon,
                        iconType: AuthIconType.outlined,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
