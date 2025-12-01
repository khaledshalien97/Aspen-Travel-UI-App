import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Padding bottomNavBarWidget() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(16, 0, 16, 32),
    child: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Positioned(
          bottom: 8,
          left: 40,
          right: 40,
          child: Container(
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  blurRadius: 40,
                  spreadRadius: 10,
                  offset: const Offset(0, 10),
                  color: const Color(0xFF2F6BFF).withOpacity(0.4),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 72,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(32),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset("assets/svg_images/home.svg"),
              SvgPicture.asset("assets/svg_images/ticket.svg"),
              SvgPicture.asset("assets/svg_images/heart.svg"),
              SvgPicture.asset("assets/svg_images/profile.svg"),
            ],
          ),
        ),
      ],
    ),
  );
}
