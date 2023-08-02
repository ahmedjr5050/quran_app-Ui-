import 'package:flutter/material.dart';

class CustomConatiner extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String textOfContainer;
  const CustomConatiner({super.key, required this.textOfContainer});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 80),
      child: Container(
        width: 240,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Center(
          child: Text(textOfContainer,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff300759))),
        ),
      ),
    );
  }
}
