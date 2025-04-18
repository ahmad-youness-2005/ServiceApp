import 'package:flutter/material.dart';

class ServicesOptions extends StatefulWidget {
  String serviceImage;
  String serviceName;

  ServicesOptions(
      {super.key, required this.serviceImage, required this.serviceName});

  @override
  State<ServicesOptions> createState() => _ServicesOptionsState();
}

class _ServicesOptionsState extends State<ServicesOptions> {
  Color appColor = const Color(0xE30856EC);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 11),
      width: 340,
      height: 130,
      decoration: BoxDecoration(
        color: appColor,
        borderRadius: BorderRadius.circular(17),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(17),
        child: Image.asset(
          widget.serviceImage,
          fit: BoxFit.cover,
          alignment: Alignment.topCenter, // 👈 Focuses on the top
        ),
      ),
    );
  }
}
