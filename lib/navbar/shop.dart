import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        Container(
          color: const Color(0xFF000159),
          height: screenHeight * .915,
          width: screenWidth,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              const Text(
                'SHOP',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                ),
              ),
              SizedBox(
                height: screenHeight * .01,
              ),
              Container(
                height: screenHeight * .8311718,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: ListView(
                  padding: const EdgeInsets.only(top: 30),
                  children: const [],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}