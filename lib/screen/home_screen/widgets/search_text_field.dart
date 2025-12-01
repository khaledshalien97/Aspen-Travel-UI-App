 import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

TextField searchTextField() {
    return TextField(
              decoration: InputDecoration(
                hint: Text(
                  'Find things to do',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 13,
                    color: Color(0xffB8B8B8),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                fillColor: Color(0xffA8CCF0).withOpacity(0.2),
                filled: true,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset("assets/svg_images/search.svg"),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide.none,
                ),
              ),
            );
  }