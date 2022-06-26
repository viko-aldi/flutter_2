import 'package:flutter/material.dart';
import 'package:flutter_1/shared/theme.dart';

class InterestItem extends StatelessWidget {

  final String title;

  const InterestItem({Key? key,
  required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
                  children: [
                    Container(
                      width: 16,
                      height:16,
                      margin: EdgeInsets.only(right: 6),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                          'icon_check.png'
                        ))
                      ),
                    ), 
                    Text(
                      title,
                      style: blackColor,
                    )
                  ],
      ),
    );
  }
}