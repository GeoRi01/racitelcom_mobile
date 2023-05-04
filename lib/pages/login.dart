import 'package:flutter/material.dart';
import 'package:racitel/pages/forgot.dart';
import 'package:racitel/pages/navbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * .07),
          children: [
            SizedBox(
              height: screenHeight * .125,
            ),
            Image.asset(
              'assets/images/logo.png',
              height: screenHeight * .125,
              width: screenWidth * .5,
            ),
            SizedBox(
              height: screenHeight * .035,
            ),
            const Text(
              'Welcome!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 45,
                color: Color(0xFF000159),
              ),
            ),
            SizedBox(
              height: screenHeight * .035,
            ),
            const Text(
              'To continue using this app,\nplease sign up first.',
              style: TextStyle(
                fontSize: 18,
                color: Color(0XFF3B3B3B),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: screenHeight * .035,
            ),
            TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.grey.withOpacity(0.1),
                filled: true,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  borderSide: BorderSide(width: 0, style: BorderStyle.none),
                ),
                hintText: 'Email or Username',
                hintStyle: const TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: screenHeight * .035,
            ),
            TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.grey.withOpacity(0.1),
                filled: true,
                suffixIcon: const Icon(
                  Icons.visibility_off,
                  color: Colors.grey,
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  borderSide: BorderSide(width: 0, style: BorderStyle.none),
                ),
                hintText: 'Password',
                hintStyle: const TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: screenHeight * .035,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ForgotpasswordPage(),
                  ),
                );
              },
              child: const Text(
                "Forgot Password?",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * .15,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: const Color(0xFF000159),
              height: screenHeight * .06,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ),
                );
              },
              child: const Text(
                "Sign In",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            SizedBox(
              height: screenHeight * .02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Didn't have any Account?"),
                SizedBox(
                  width: screenWidth * .01,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.red,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
