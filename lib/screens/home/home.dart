import 'package:eatz/data/data.dart';
import 'package:eatz/screens/home/components/dish_card.dart';
import 'package:eatz/screens/home/components/greeting_header.dart';
import 'package:eatz/screens/home/components/search_field.dart';
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
      body: SafeArea(
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
              child: CategoryCard(),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 16.0),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Popular Today',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    for (var dish in dishes)
                      DishCard(dish: dish)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
