import 'package:flutter/material.dart';
import 'package:flutter_1/shared/theme.dart';

class SeatItem extends StatelessWidget {



  // NOTE : 0 = Available, 1 = Selected, 2 = Unavalable

 final int status; 


  const SeatItem({Key? key,
  required this.status
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    backgroundColor(){
      switch (status) {
        case 0:
          return kAvaibleColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnvaibleColor;
        default:
          return kUnvaibleColor;
      }

    }

    child(){
      switch (status) {
        case 0:
          return SizedBox();
        case 1:
          return Center(
        child: Text(
          'YOU',
          style: whiteColor.copyWith(
            fontWeight: semiBold,
          ),
        ),
      );
        case 2:
          return SizedBox();
        default:
          return SizedBox();
      }
    }

    borderColor(){
      switch (status) {
        case 0:
          return kPrimaryColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnvaibleColor;
        default:
          return kUnvaibleColor;
      }
    }



    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: backgroundColor(),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: borderColor(),
        )
      ),
      child: child(),
    );
  }
}