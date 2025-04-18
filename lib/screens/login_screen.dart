import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../components/background.dart';
import '../components/login_screen_top_image.dart';
import '../responsive.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var email = TextEditingController();
  var password = TextEditingController();
  bool passwordVisible = true;
  bool isSwitched = false;

  void _toggleSwitch(bool value) {
    setState(() {
      isSwitched = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Responsive(
          mobile: MobileLoginScreen(),
          desktop: Row(
            children: [
              Expanded(flex: 2, child: LoginScreenTopImage()),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Welcome back,",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                SizedBox(
                                  child: TextField(
                                    controller: email,
                                    decoration: InputDecoration(
                                      hintText: "Email",
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Icon(Icons.email_outlined),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                SizedBox(
                                  child: TextField(
                                    controller: password,
                                    obscureText: passwordVisible,
                                    decoration: InputDecoration(
                                      hintText: "Password",
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Icon(Icons.lock_outlined),
                                      ),
                                      suffixIcon: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: IconButton(
                                          icon: Icon(
                                            passwordVisible
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              passwordVisible =
                                                  !passwordVisible;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_forward_ios_outlined),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Remember me",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Switch(
                            value: isSwitched,
                            onChanged: _toggleSwitch,
                            activeTrackColor: Color(
                              0xFF6F35A5,
                            ).withOpacity(0.5),
                            activeColor: Color(0xFF6F35A5),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(color: Colors.grey, thickness: 2),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "or",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Divider(color: Colors.grey, thickness: 2),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: 250,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF6F35A5).withOpacity(0.5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/icons/google-plus.svg",
                                height: 20,
                                width: 20,
                              ),
                              SizedBox(width: 10),
                              Text("Sign in with Google"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MobileLoginScreen extends StatefulWidget {
  const MobileLoginScreen({Key? key}) : super(key: key);

  @override
  State<MobileLoginScreen> createState() => _MobileLoginScreenState();
}

class _MobileLoginScreenState extends State<MobileLoginScreen> {
  var email = TextEditingController();
  var password = TextEditingController();
  bool passwordVisible = true;
  bool isSwitched = false;

  void _toggleSwitch(bool value) {
    setState(() {
      isSwitched = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const LoginScreenTopImage(),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              SizedBox(
                child: TextField(
                  controller: email,
                  decoration: const InputDecoration(
                    hintText: "Email",
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(Icons.email_outlined),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                child: TextField(
                  controller: password,
                  obscureText: passwordVisible,
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: const Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(Icons.lock_outlined),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: Icon(
                          passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                child: ElevatedButton(onPressed: () {}, child: Text("Login")),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Remember me",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Switch(
                    value: isSwitched,
                    onChanged: _toggleSwitch,
                    activeTrackColor: Color(0xFF6F35A5).withOpacity(0.5),
                    activeColor: Color(0xFF6F35A5),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
