import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedCategory = 0;

  List<String> categories = [
    "Location",
    "Hotels",
    "Food",
    "Adventure",
    "Adventure",
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedCategory = index;
              });
            },
            child: AnimatedContainer(
              margin: EdgeInsets.symmetric(horizontal: 10),

              duration: Duration(milliseconds: 300),
              child: Center(
                child: selectedCategory == index
                    ? Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xffA8CCF0).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(33),
                        ),
                        child: Text(
                          categories[index],
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            color: Color(0xff196EEE),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )
                    : Text(
                        categories[index],
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 14,
                          color: Color(0xffB8B8B8),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
              ),
            ),
          );
        },
      ),
    );
  }
}
