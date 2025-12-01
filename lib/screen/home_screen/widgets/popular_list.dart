import 'package:aspen_travel_app_ui/model/popular_model.dart';
import 'package:aspen_travel_app_ui/screen/details_screen/details_screen.dart';
import 'package:aspen_travel_app_ui/screen/home_screen/widgets/title_of_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PopularList extends StatelessWidget {
  const PopularList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        titleOfList("Popular",true),
        SizedBox(height: 12),
        SizedBox(
          height: 240,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: PopularModel.popularData.length,
            itemBuilder: (context, index) {
              var data = PopularModel.popularData[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailsScreen(model:data,)),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(right: 16),
                  width: 188,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(data.img),
                    ),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 16,
                        bottom: 60,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFF4D5652),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Text(
                            data.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16,
                        bottom: 20,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 7,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFF4E5356),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset("assets/svg_images/star.svg"),
                              const SizedBox(width: 6),
                              Text(
                                data.evaluation.toString(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        right: 16,
                        bottom: 20,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 6,
                                offset: const Offset(0, 3),
                                color: Colors.black.withOpacity(0.2),
                              ),
                            ],
                          ),
                          child: SvgPicture.asset(
                            "assets/svg_images/favorite.svg",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

 
}
