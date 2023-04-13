import 'package:flutter/material.dart';
import 'package:racitel/pages/register.dart';

class TermsPage extends StatefulWidget {
  const TermsPage({super.key});

  @override
  State<TermsPage> createState() => _TermsPageState();
}

class _TermsPageState extends State<TermsPage> {
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
              height: screenHeight * .08,
            ),
            Image.asset(
              'assets/images/logo_racitelcom.png',
              height: screenHeight * .125,
              width: screenWidth * .5,
            ),
            SizedBox(
              height: screenHeight * .035,
            ),
            const Text(
              'Data Privacy Notice',
              style: TextStyle(
                fontSize: 30,
                color: Color(0xFF000159),
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              width: screenWidth * 2,
              height: screenHeight * .525,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color(0xFF000159),
                  width: screenWidth * .01,
                ),
              ),
              child: const Text(
                  "What is RACITELCOM, INC.'s promise to you? \n\nAs a condition for the use of the service, you permit Racitelcom, Inc. to process and/or disclose personal data, including that data that may be classified as personal information and/or sensitive information under the Data Privacy Act of 2012, it’s partners and/or other third parties in order to undertake activities like the following among others:\n\n1. Conducting analysis and research.\n2. Account management\n3. Statistical insight to assist the Government in planning for healthcare,disaster, and the likes.\n4. Sending commercial and promotional advertisements,surveys,customer-care, after sales communications, and other broadcast push messages.\n5. Such other processing or disclosure that may be required under the law or regulations.\n\nYour personal data will be maintained in our records throughout your availment of the service. You are afforded certain rights in relation to your personal data under the Data Privacy Act, including the right to object to processing, the right to access your data, the right to rectification of inaccurate data, and the right to erasure or blocking of data."),
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
                  "I understand the Data Privacy Notice",
                  style: TextStyle(color: Colors.grey.shade800, fontSize: 14),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * .010,
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
                    builder: (context) => const RegisterPage(),
                  ),
                );
              },
              child: const Text(
                "Proceed",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
