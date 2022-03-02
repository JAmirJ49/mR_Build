import 'package:auth_buttons/auth_buttons.dart';
import 'package:copy/screens/LoginScreen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  static const routeName = 'register-screen';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool obscureText1 = true;
  bool obscureText2 = true;
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
                Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
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
                SizedBox(height: 4),
                //  SizedBox(height: 10),
                Card(
                  elevation: 2.0,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Email Address',
                    ),
                  ),
                ),
                SizedBox(height: 4),
                Card(
                  elevation: 2.0,
                  child: TextFormField(
                    obscureText: obscureText1,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Password',
                      suffixIcon: IconButton(
                        color: Colors.grey,
                        onPressed: () {
                          obscureText1 = !obscureText1;
                          setState(() {});
                        },
                        icon: Icon(
                          obscureText1
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
                SizedBox(height: 10),
                Card(
                  elevation: 2.0,
                  child: TextFormField(
                    obscureText: obscureText2,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Confirm Password',
                      suffixIcon: IconButton(
                        color: Colors.grey,
                        onPressed: () {
                          obscureText2 = !obscureText2;
                          setState(() {});
                        },
                        icon: Icon(
                          obscureText2
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
                      Spacer(),
                      InkWell(
                        onTap: () => Navigator.of(context)
                            .pushReplacementNamed(LoginScreen.routeName),
                        child: Text(
                          'Login Now !',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                          ),
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
                      onPressed: () {},
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
