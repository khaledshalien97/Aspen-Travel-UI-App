import 'package:aspen_travel_app_ui/screen/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "assets/images/onboarding_img.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Container(
                margin: EdgeInsets.fromLTRB(30, 70, 30, 50),
                child: Column(
                  children: [
                    Text(
                      "Aspen",
                      style: TextStyle(
                        fontFamily: 'Hiatus',
                        fontSize: 116,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 10,
                      ),
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Plan your",
                          style: GoogleFonts.montserrat(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),

                        Text(
                          "Luxurious Vacation",
                          style: GoogleFonts.montserrat(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        SizedBox(height: 15),
                        ElevatedButtonWidget(
                          title: "Explore",
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({super.key, required this.title, this.onPressed});
  final String title;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Container(
          height: 55,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              colors: [Color(0xff176FF2), Color(0xff196EEE)],

              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child:  Text(
         title,
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
