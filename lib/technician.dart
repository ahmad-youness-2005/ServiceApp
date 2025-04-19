import 'package:flutter/material.dart';
import 'package:mobile_project/tabs.dart'; // Adjust the import if necessary
import 'package:mobile_project/navigation_bar.dart'; // Adjust the import if necessary




class TechnicianPage extends StatefulWidget {
  const TechnicianPage({super.key});

  @override
  State<TechnicianPage> createState() => _TechnicianPageState();
}

class _TechnicianPageState extends State<TechnicianPage> {
  Color appColor = const Color(0xE30856EC);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: appColor,
        title: NavBar(
          screenIcon: Icons.arrow_back, // Correct usage here
          screenTitle: 'Technican Service',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          ],
        ),
        ),
         bottomNavigationBar: const BottomTabs(),
    );
  }
}