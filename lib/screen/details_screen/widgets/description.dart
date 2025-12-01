import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

ReadMoreText description(var data) {
  return ReadMoreText(
    data.desc,
    trimLines: 3,
    colorClickableText: Color(0xff176FF2),
    trimMode: TrimMode.Line,
    trimCollapsedText: 'Read more',
    trimExpandedText: 'Read less',
    style: TextStyle(
      fontFamily: 'Inter',
      fontSize: 16,
      color: Color(0xff3A544F),
      fontWeight: FontWeight.w400,
    ),
    moreStyle: TextStyle(
      fontFamily: 'Inter',
      fontSize: 16,
      color: Color(0xff196EEE),
      fontWeight: FontWeight.bold,
    ),
  );
}
