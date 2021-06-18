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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: CircleAvatar(
              backgroundColor: Colors.black,
            ),
            actions: [Icon(Icons.notifications_none)],
            floating: false,
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: 16.0),
            sliver: SliverToBoxAdapter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Hey, ',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'Rex',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Hungry Today?',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            sliver: SliverToBoxAdapter(
              child: SearchField(),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Categories', style: TextStyle(fontWeight: FontWeight.w700),),
                SizedBox(height: 16.0),
                CategoryCard(icon: Icon(Icons.no_food), label: 'Steak')
              ],
            ),
          )
        ],
      ),
    );
  }
}
