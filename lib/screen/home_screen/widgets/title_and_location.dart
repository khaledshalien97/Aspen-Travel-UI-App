 import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

Row titleandLocation() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Explore",
              style: GoogleFonts.montserrat(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "Aspen",
              style: GoogleFonts.montserrat(
                fontSize: 32,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Row(
          children: [
            SvgPicture.asset("assets/svg_images/location.svg"),
            SizedBox(width: 6),
            Text(
              'Aspen , USA',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 12,
                color: Color(0xff606060),
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(width: 6),
            SvgPicture.asset("assets/svg_images/arrow_down.svg"),
          ],
        ),
      ],
    );
  }