import 'package:flutter/material.dart';
import 'package:flutter_1/shared/theme.dart';

class DestinationTile extends StatelessWidget {

final String title;
final String city;
final String imageUrl;
final double rating;

  const DestinationTile({Key? key,
  required this.title,
  required this.city,
  required this.imageUrl,
  this.rating = 0.0,
  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.all(10),
      decoration:BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
         Container(
           width: 70,
           height: 70,
           margin: EdgeInsets.only(right: 16),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(18),
             image: DecorationImage(
               fit: BoxFit.cover,
               image: AssetImage(
               imageUrl,
             ),
             ),
           ),
         ),
         Expanded(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(title,
               style: blackColor.copyWith(
                 fontWeight: medium,
                 fontSize: 18,
                 
               ),),
               SizedBox(height: 5,),
              Text(city,
              style: greyColor.copyWith(
                fontWeight: light,
              ),
              )
             ],
           ),
         ),
         Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Container(
                         width: 20,
                         height: 20,
                         margin: EdgeInsets.only(right: 2),
                         decoration: BoxDecoration(
                          image: DecorationImage
                          (image: AssetImage
                          ('icon_star.png')
                          ) 
                         ),
                       ),
                       Text(rating.toString(),
                       style: blackColor.copyWith(
                         fontWeight: medium,
                       ),)
                     ],
                   ), 
        ],
      ),
    );
  }
}