import 'package:eatz/models/category.dart';
import 'package:eatz/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key, required this.category}) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Constants.kCategoryCardSize,
      height: Constants.kCategoryCardSize,
      child: Card(
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "${category.icon}",
              width: Constants.kCategoryIconSize,
              height: Constants.kCategoryIconSize,
            ),
            SizedBox(height: 10.0),
            Text(
              "${category.label}",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
