import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

Row placeNameWithReview(var data) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data.name,
            style: GoogleFonts.montserrat(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),

          Row(
            children: [
              SvgPicture.asset("assets/svg_images/star.svg"),
              SizedBox(width: 5),
              Text(
                "${data.evaluation} "
                "(${data.review} Reviews)",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 12,
                  color: Color(0xff606060),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),

      Text(
        'Show map',
        style: TextStyle(
          fontFamily: 'Inter',
          fontSize: 14,
          color: Color(0xff176FF2),
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}
