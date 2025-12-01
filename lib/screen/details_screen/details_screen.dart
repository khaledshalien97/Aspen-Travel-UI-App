import 'package:aspen_travel_app_ui/model/popular_model.dart';
import 'package:aspen_travel_app_ui/screen/details_screen/widgets/booknow_and_price.dart';
import 'package:aspen_travel_app_ui/screen/details_screen/widgets/description.dart';
import 'package:aspen_travel_app_ui/screen/details_screen/widgets/facilities_section.dart';
import 'package:aspen_travel_app_ui/screen/details_screen/widgets/image_of_place.dart';
import 'package:aspen_travel_app_ui/screen/details_screen/widgets/place_name_with_review.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.model});
  final PopularModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // image of place
              imageOfPlace(context, model),
              // Place Name and Review
              placeNameWithReview(model),
              SizedBox(height: 30),
              // Description and ReadMore
              description(model),
              // Facilities Section
              FacilitiesSection(),
            ],
          ),
        ),
      ),

      bottomNavigationBar: bookNowAndPrice(model),
    );
  }


}
