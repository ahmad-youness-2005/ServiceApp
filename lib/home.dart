import 'package:flutter/material.dart';
import 'package:mobile_project/robot.dart';
import 'package:mobile_project/services_options.dart';
import 'package:mobile_project/tabs.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color appColor = const Color(0xE30856EC);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 120,
          backgroundColor: appColor,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.account_circle_outlined,
                      color: Colors.white),
                  const SizedBox(width: 10),
                  const Text(
                    "Good Afternoon , Ahmad",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      letterSpacing: -0.03 * 14,
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
                    hintStyle:
                        TextStyle(fontSize: 14, letterSpacing: -0.03 * 14),
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
              //const ServicesOptions(),
            ],
          ),
        ),
        bottomNavigationBar: BottomTabs(),
      ),
    );
  }
}
