import 'package:flutter/material.dart';
import 'package:racitel/pages/login.dart';

class ForgotpasswordPage extends StatefulWidget {
  const ForgotpasswordPage({super.key});

  @override
  State<ForgotpasswordPage> createState() => _ForgotpasswordPageState();
}

class _ForgotpasswordPageState extends State<ForgotpasswordPage> {
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
          padding: EdgeInsets.symmetric(horizontal: screenWidth * .1),
          children: [
            SizedBox(
              height: screenHeight * .1,
            ),
            const Text(
              'Forgot Password',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 45,
                color: Color(0xFF000159),
              ),
            ),
            SizedBox(
              height: screenHeight * .08,
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
                hintText: 'Enter Email Address',
                hintStyle: const TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: screenHeight * .025,
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
                hintText: 'Email Code',
                hintStyle: const TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: screenHeight * .025,
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
                hintText: 'Enter New Password',
                hintStyle: const TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: screenHeight * .025,
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
                hintText: 'Confirm New Password',
                hintStyle: const TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: screenHeight * .2,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: const Color(0xFF000159),
              height: screenHeight * .07,
              onPressed: () {},
              child: const Text(
                "Submit",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            SizedBox(
              height: screenHeight * .02,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: const Color(0xFFF5F5F5),
              height: screenHeight * .07,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              child: const Text(
                "Cancel",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
