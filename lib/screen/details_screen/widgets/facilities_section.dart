import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;

class FacilitiesSection extends StatefulWidget {
  const FacilitiesSection({super.key});

  @override
  State<FacilitiesSection> createState() => _FacilitiesSectionState();
}

class _FacilitiesSectionState extends State<FacilitiesSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 50),
        Text(
          "Facilities",
          style: GoogleFonts.montserrat(
            fontSize: 18,
            color: Color(0xff232323),
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 15),
        Row(
          children: [
            facilitieContainer('1 Heater', "assets/svg_images/wifi.svg"),
            facilitieContainer('Dinner', "assets/svg_images/food.svg"),
            facilitieContainer('1 Tub', "assets/svg_images/bath_tub.svg"),
            facilitieContainer('Pool', "assets/svg_images/pool.svg"),
          ],
        ),
        SizedBox(height: 30),
      ],
    );
  }

  Expanded facilitieContainer(String title, String img) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(right: 14),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Color(0xffA8CCF0).withOpacity(0.3),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            SvgPicture.asset(img),
            SizedBox(height: 5),
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 12,
                color: Color(0xffB8B8B8),
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
