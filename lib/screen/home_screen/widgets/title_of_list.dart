 import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Row titleOfList(String title,bool viewMore) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(

           title,
            style: GoogleFonts.montserrat(
              fontSize: 18,
              color: Color(0xff232323),
              fontWeight: FontWeight.w600,
            ),
          ),
          viewMore?
          Text(
            "See All",
            style: GoogleFonts.montserrat(
              fontSize: 12,
              color: Color(0xff196EEE),
              fontWeight: FontWeight.w500,
            ),
          ):SizedBox(),
        ],
      );
  }