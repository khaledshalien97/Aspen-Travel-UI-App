 import 'package:aspen_travel_app_ui/screen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

SafeArea bookNowAndPrice(var data) {
    return SafeArea(
      top: false,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Price',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 12,
                      color: Color(0xff232323),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "\$ ${data.price}",
                    style: GoogleFonts.montserrat(
                      fontSize: 24,
                      color: Color(0xff2DD7A4),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              flex: 2,
              child: ElevatedButtonWidget(
                title: "Book Now",
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }