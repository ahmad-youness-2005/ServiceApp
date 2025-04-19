import 'package:flutter/material.dart';
import 'package:mobile_project/robot.dart'; // Adjust the import if necessary
import 'package:mobile_project/services_options.dart'; // Adjust the import if necessary
import 'package:mobile_project/tabs.dart'; // Adjust the import if necessary
import 'package:mobile_project/navigation_bar.dart'; // Adjust the import if necessary

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color appColor = const Color(0xE30856EC);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: appColor,
        title: NavBar(
          screenIcon: Icons.account_circle_outlined, // Correct usage here
          screenTitle: 'Good Afternoon , Ahmad',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Robot(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'SERVE U SERVICE',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Row(
                    children: const [
                      Text('View all', style: TextStyle(color: Colors.black)),
                      SizedBox(width: 4),
                      Icon(Icons.arrow_forward_ios_rounded, size: 14),
                    ],
                  ),
                ],
              ),
            ),
            ServicesOptions(
                serviceImage: 'assets/images/delivery.jpeg',
                serviceName: 'Delivery Service'),
            ServicesOptions(
              serviceImage: 'assets/images/technician.jpeg',
              serviceName: 'Technician',
            ),
            ServicesOptions(
              serviceImage: 'assets/images/booking.jpeg',
              serviceName: 'Booking',
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomTabs(),
    );
  }
}