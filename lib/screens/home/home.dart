import 'package:eatz/data/data.dart';
import 'package:eatz/screens/home/components/dish_card.dart';
import 'package:eatz/screens/home/components/greeting_header.dart';
import 'package:eatz/screens/home/components/search_field.dart';
import 'package:eatz/utils/assets.dart';
import 'package:flutter/material.dart';

import 'components/category_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            clipper: HeadClip(),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.7,
              color: Colors.yellow.shade100,
            ),
          ),
          SafeArea(
            bottom: false,
            child: CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  sliver: SliverToBoxAdapter(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          child: ClipOval(child: Image.asset(Assets.dp)),
                        ),
                        Icon(Icons.notifications_none, color: Colors.black)
                      ],
                    ),
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.only(top: 20.0),
                  sliver: SliverToBoxAdapter(
                    child: GreetingHeader(),
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 40),
                  sliver: SliverToBoxAdapter(
                    child: SearchField(),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          'Categories',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      GridView.count(
                        // Added this so the grid wont scroll separately
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        padding: EdgeInsets.all(16),
                        shrinkWrap: true,
                        children: [
                          for (var category in categories)
                            CategoryCard(
                              category: category,
                            ),
                        ],
                      )
                    ],
                  ),
                ),
                SliverPadding(
                  padding:
                      EdgeInsets.symmetric(vertical: 30.0, horizontal: 16.0),
                  sliver: SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Popular Today',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        for (var dish in dishes) DishCard(dish: dish)
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HeadClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width / 4, size.height, size.width, size.height / 1.5);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
