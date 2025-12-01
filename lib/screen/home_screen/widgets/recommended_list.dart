import 'package:aspen_travel_app_ui/model/recommended_model.dart';
import 'package:aspen_travel_app_ui/screen/home_screen/widgets/title_of_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RecommendedList extends StatelessWidget {
  const RecommendedList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        titleOfList("Recommended", false),
        SizedBox(height: 12),
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: RecommendedModel.recommendedData.length,
            itemBuilder: (context, index) {
              var data = RecommendedModel.recommendedData[index];
              return Container(
                padding: EdgeInsets.all(6),
                margin: EdgeInsets.only(right: 16),
                width: 176,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      child: Image.asset(data.img),
                    ),
                    Text(
                      data.name,
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Color(0xff232323),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        SvgPicture.asset("assets/svg_images/trending-up.svg"),
                        SizedBox(width: 5),
                        Text(
                          "Hot Deal",
                          style: GoogleFonts.montserrat(
                            fontSize: 10,
                            color: Color(0xff3A544F),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
