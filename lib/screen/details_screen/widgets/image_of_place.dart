  import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Container imageOfPlace(BuildContext context,var data) {
    return Container(
      width: double.infinity,
      height: 385,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  height: 340,
                  child: AspectRatio(
                    aspectRatio: 4 / 3,
                    child: Image.asset(data.img, fit: BoxFit.cover),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 14,
            left: 14,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                      color: Colors.black.withOpacity(0.08),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset("assets/svg_images/arrow_left.svg"),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 14,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Color(0xffF2F7FD),
              child: SvgPicture.asset("assets/svg_images/Heart_2.svg"),
            ),
          ),
        ],
      ),
    );
  }