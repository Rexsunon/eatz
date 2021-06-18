import 'package:eatz/utils/assets.dart';
import 'package:flutter/material.dart';

class DishCard extends StatelessWidget {
  const DishCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Container(
        height: 140.0,
        child: Card(
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: 10.0,
              right: 10.0,
              bottom: 10.0,
            ),
            child: Row(
              children: [
                Image.asset(
                  Assets.friedShrimps,
                  width: 120,
                  height: 110,
                  cacheWidth: 120,
                  cacheHeight: 110,
                  fit: BoxFit.fill,
                ),
                SizedBox(width: 5.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fried Shrimps',
                      style: TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text('by rex k'),
                    SizedBox(height: 3),
                    Row(
                      children: [
                        Icon(Icons.star, size: 16.0),
                        SizedBox(width: 10),
                        Text(
                          '4.8',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "\$700",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 130),
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
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
