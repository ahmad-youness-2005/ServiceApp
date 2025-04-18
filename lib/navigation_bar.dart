import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  Color appColor = const Color(0xE30856EC);
  double sizeFont = 14;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {},
              child: Icon(Icons.account_circle_outlined, color: Colors.white),
            ),
            const SizedBox(width: 10),
            Text(
              "Good Afternoon , Ahmad",
              style: TextStyle(
                color: Colors.white,
                fontSize: sizeFont,
                letterSpacing: -0.03 * sizeFont,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            const Icon(
              size: 32,
              Icons.circle_notifications_outlined,
              color: Colors.white,
            )
          ],
        ),
        const SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white,
          ),
          width: 350,
          height: 44,
          child: const TextField(
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              fillColor: Colors.white,
              filled: true,
              hintText: 'Search for...',
              hintStyle: TextStyle(fontSize: 14, letterSpacing: -0.03 * 14),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                borderSide: BorderSide.none,
              ),
              prefixIcon: Icon(
                Icons.search,
                size: 18.0,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
