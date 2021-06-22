import 'package:eatz/models/dish.dart';
import 'package:eatz/utils/constants.dart';
import 'package:flutter/material.dart';

import 'custom_card.dart';

class DishCard extends StatelessWidget {
  const DishCard({Key? key, required this.dish}) : super(key: key);

  final Dish dish;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Container(
        height: Constants.kDishCardHeight,
        child: CustomCard(
          elevated: true,
          borderRadius: BorderRadius.circular(15.0),
          child: Padding(
            padding: EdgeInsets.only(
              top: 10.0,
              right: 10.0,
              bottom: 10.0,
              left: 5.0
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(
                  dish.image,
                  width: 120,
                  height: 110,
                  cacheWidth: 120,
                  cacheHeight: 110,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 5.0),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        dish.name,
                        style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text('by ${dish.cook}'),
                      SizedBox(height: 3),
                      Row(
                        children: [
                          Icon(Icons.star, size: 16.0),
                          SizedBox(width: 5),
                          Text(
                            '${dish.rating}',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      // SizedBox(height: 5),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              "\$${dish.price}",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.black,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_forward_rounded,
                                  color: Colors.white,
                                  size: 18.0,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
