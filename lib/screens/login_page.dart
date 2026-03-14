import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/app_colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(color: AppColors.brandPrimary),
        child: Stack(
          children: [
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => { Navigator.pushReplacementNamed(context, 'home') },
                    child: Text(
                      "Later",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: 25.5,
              child: SvgPicture.asset("assets/login/Pattern.svg"),
            ),
            Positioned(
              top: 163,
              right: 33.89,
              child: SvgPicture.asset("assets/login/Illustration.svg"),
            ),
            Positioned(
              top: 175,
              left: 72,
              child: SvgPicture.asset("assets/login/Group.svg"),
            ),
            Positioned(
              top: 180,
              right: 55.5,
              child: SvgPicture.asset("assets/login/Group-1.svg"),
            ),
            Positioned(
              top: 238,
              left: 51,
              child: SvgPicture.asset("assets/login/Group-2.svg"),
            ),
            Positioned(
              top: 205,
              right: 27.25,
              child: SvgPicture.asset("assets/login/Group-3.svg"),
            ),
            Positioned(
              top: 376,
              left: 67,
              child: SvgPicture.asset("assets/login/Group-4.svg"),
            ),
            Positioned(
              top: 353,
              right: 38.29,
              child: SvgPicture.asset("assets/login/Group-5.svg"),
            ),
            Positioned(
              top: 291,
              right: 116.2,
              child: SvgPicture.asset("assets/login/Group-6.svg"),
            ),
            Positioned(
              top: 308,
              left: 104,
              child: SvgPicture.asset("assets/login/Group-7.svg"),
            ),
            Positioned(
              top: 285,
              left: 110.59,
              child: SvgPicture.asset("assets/login/Group-8.svg"),
            ),
            Positioned(
              top: 388,
              left: 36,
              child: SvgPicture.asset("assets/login/Vector.svg"),
            ),
            Positioned(
              top: 162,
              left: 173,
              child: SvgPicture.asset("assets/login/Vector-1.svg"),
            ),
            Positioned(
              top: 319,
              left: 175,
              child: SvgPicture.asset("assets/login/Vector-2.svg"),
            ),
            Positioned(
              top: 388,
              left: 36,
              child: SvgPicture.asset("assets/login/Vector-3.svg"),
            ),
            Positioned(
              top: 412,
              left: 196,
              child: SvgPicture.asset("assets/login/Vector-4.svg"),
            ),
            Positioned(
              top: 263,
              left: 244,
              child: SvgPicture.asset("assets/login/Vector-5.svg"),
            ),
            Positioned(
              top: 249,
              left: 169,
              child: SvgPicture.asset("assets/login/Vector-6.svg"),
            ),
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                spacing: 8,
                children: [
                  Text(
                    "Help your path to health\ngoals with happiness",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: "SofiaPro",
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 2),
                  Row(
                    children: [
                      Expanded(
                        child: FilledButton(
                          onPressed: () => {

                          },
                          style: ButtonStyle(
                            padding: WidgetStateProperty.all(
                              EdgeInsets.all(20),
                            ),
                            textStyle: WidgetStateProperty.all(
                              TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            backgroundColor: WidgetStateProperty.all(
                              Colors.black,
                            ),
                            foregroundColor: WidgetStateProperty.all(
                              Colors.white,
                            ),
                            shape: WidgetStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                          ),
                          child: Text("Login"),
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () => {},
                    child: Text(
                      "Create New Account",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
