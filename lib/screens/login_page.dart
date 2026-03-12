import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
                    onPressed: () => {},
                    child: Text(
                      "Later",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 15),
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
              top: 205,
              right: 27.25,
              child: SvgPicture.asset("assets/login/Group-2.svg"),
            ),
            Positioned(
              top: 205,
              right: 27.25,
              child: SvgPicture.asset("assets/login/Group-3.svg"),
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
                          onPressed: () => {},
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
