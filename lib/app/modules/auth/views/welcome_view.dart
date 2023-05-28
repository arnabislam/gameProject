import 'package:flutter/material.dart';
import 'package:game/app/modules/auth/views/regiter_view.dart';
import 'package:game/app/modules/home/views/home_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../public_widgets/stylish_button.dart';
import '../../../../utils/constant.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[50], // Change the background color here
      child: Scaffold(
        // drawer: const PublicDrawer(),
        appBar: AppBar(
          title: Text(
            'Welcome',
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                "assets/images/welcomelogo.jpg",
                height: 200,
                width: 400,
                fit: BoxFit.fill,
              ),
              const SizedBox(height: 20),
              Text(
                'Welcome to TeenPattiGold',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF414C6B),
                ),
              ),
              const SizedBox(height: 50),
              const StylishButton(
                title: 'Login',
              ),
              const SizedBox(height: 20),
              OutlinedButton(
                onPressed: () {
                 // Get.to(RegisterView());
                  Get.to(HomeView());
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    width: 2,
                    color: kPrimaryColor,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: Text(
                  'Register',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: kPrimaryColor,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
