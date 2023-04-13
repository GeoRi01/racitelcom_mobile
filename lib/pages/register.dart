import 'package:flutter/material.dart';
import 'package:racitel/pages/login.dart';
import 'package:racitel/pages/terms.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool? agree = false;
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
              'To continue using this app,\nplease sign up first.',
              style: TextStyle(fontSize: 18),
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
                hintText: 'Name',
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
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  borderSide: BorderSide(width: 0, style: BorderStyle.none),
                ),
                hintText: 'Email',
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
                hintText: 'Re-type Password',
                hintStyle: const TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: screenHeight * .015,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: agree,
                  activeColor: const Color(0xFF000159),
                  onChanged: (value) {
                    setState(() {
                      agree = value;
                    });
                  },
                ),
                Text(
                  "I agree to the ",
                  style: TextStyle(color: Colors.grey.shade800, fontSize: 14),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TermsPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Terms and Conditions",
                    style: TextStyle(
                        color: Color(0xFF000159),
                        fontSize: 14,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
            SizedBox(
              height: screenHeight * .022,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: const Color(0xFF000159),
              height: screenHeight * .06,
              onPressed: () {},
              child: const Text(
                "Sign Up",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            SizedBox(
              height: screenHeight * .02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?"),
                SizedBox(
                  width: screenWidth * .01,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Sign In",
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
