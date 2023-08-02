import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quran_app2/Pages/InnerPage.dart';

class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);
  static String id = 'Signin';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdad0e1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 113,
          ),
          const Text(
            "Quran App",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Color(0xff300759),
            ),
          ),
          const Text(
            "Asalamu Alaikum !!!",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xff9D1DF2),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 50),
                child: Text(
                  "Sign In ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff9D1DF2),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 22,
          ),
          Container(
            width: 292,
            height: 49,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffe5b6f2),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "email",
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(
            height: 31,
          ),
          Container(
            width: 292,
            height: 49,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffe5b6f2),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Password",
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  color: Colors.black,
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(
            height: 69,
          ),
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 400,
                  height: 430,
                  child: Image.asset(
                    'assets/images/Mosqu.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: 10,
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xffe5b6f2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, InnerPage.id);
                          },
                          child: Text(
                            "Sign in",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text('Or'),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/images/Google.svg',
                            width: 30,
                            height: 30,
                          ),
                          const SizedBox(width: 20),
                          SvgPicture.asset(
                            'assets/images/facebook.svg',
                            width: 30,
                            height: 30,
                          ),
                          const SizedBox(width: 20),
                          SvgPicture.asset(
                            'assets/images/Group.svg',
                            width: 30,
                            height: 30,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Row(
                        children: [
                          Text(
                            'Don’t have an account ?',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '? Register here',
                            style: TextStyle(color: Color(0xff0E18F6)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
