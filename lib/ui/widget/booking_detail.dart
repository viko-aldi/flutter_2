import 'package:flutter/material.dart';
import 'package:flutter_1/shared/theme.dart';

class BookingDetailItem extends StatelessWidget {

final String title;
final String valueText;
//final String valueColor;

  const BookingDetailItem({Key? key,
  required this.title,
  required this.valueText,
  //stak 
  //required this.valueColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.only(
            top: 16,
          ),
          child: Row(
            children: [
              Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage
                  ('icon_check.png'))
                ),
              ),
              Text(
                title,
                style: blackColor,
              ),
              Spacer(),
              Text(
              valueText, 
              style: blackColor.copyWith(
                fontWeight: semiBold,
              ),
              ),
            ],
          ),
    );
  }
}