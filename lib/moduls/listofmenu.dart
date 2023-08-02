import 'package:flutter/material.dart';
// ignore: must_be_immutable
class Menu extends StatelessWidget {
  Menu(
      {required this.name1,
      required this.name2,
      required this.nam3,
      required this.arbicname});
  String? name1, name2, nam3, arbicname;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 50),
          child: Column(
            children: [
              Text(name1!,
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff300759),
                  )),
              Text(name2!,
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff300759))),
              Text(nam3!,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff300759),
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 50, left: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                arbicname!,
                style: TextStyle(
                    color: Color(0xff300759),
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
