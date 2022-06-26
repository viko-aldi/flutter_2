import 'package:flutter/material.dart';
import 'package:flutter_1/shared/theme.dart';
import 'package:flutter_1/ui/widget/custom_bottom.dart';

class SuccesCheckoutPage extends StatelessWidget {
  const SuccesCheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: 
        Column(
          mainAxisAlignment:MainAxisAlignment.center ,
          children: [
          Container(
            width: 300,
            height: 150,
            margin:EdgeInsets.only(bottom: 80),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                'image_success.png',
              ),
              ),
            ),
          ),
          Text(
            'Well Booked',
            style: blackColor.copyWith(
              fontSize: 12,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(height: 10,),
          Text(' Are You ready to explore the new\nword of expreiences',
          style: greyColor.copyWith(
            fontSize: 16,
            fontWeight: light,
          ),
          textAlign: TextAlign.center,
          ),
          CustomBottom(title: 'My Bookings', onPressed: (){
            Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
          },
          width: 220,
          margin: EdgeInsets.only(top: 50),
          ),

        ],)
          ),
    );
  }
}