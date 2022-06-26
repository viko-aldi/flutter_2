import 'package:flutter/material.dart';
import 'package:flutter_1/shared/theme.dart';
import 'package:flutter_1/ui/pages/succes_checkout_page.dart';
import 'package:flutter_1/ui/widget/booking_detail.dart';
import 'package:flutter_1/ui/widget/custom_bottom.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Widget route() {
    //   return Container(
    //     margin: EdgeInsets.only(top: 50),
    //     child: Column(
    //       children: [
    //         Container(
    //           width: 291,
    //           height: 65,
    //           margin: EdgeInsets.only(bottom: 10),
    //           decoration: BoxDecoration(
    //             image: DecorationImage(
    //               image: AssetImage('image_checkout.png'),
    //             ),
    //           ),
    //         ),
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceAround,
    //           children: [
    //             Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Text(
    //                   'CGK',
    //                   style: blackColor.copyWith(
    //                     fontSize: 24,
    //                     fontWeight: semiBold,
    //                   ),
    //                 ),
    //                 Text(
    //                   'Ponorogo',
    //                   style: greyColor.copyWith(
    //                     fontWeight: light,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //             Column(
    //               crossAxisAlignment: CrossAxisAlignment.end,
    //               children: [
    //                 Text(
    //                   'JGJA',
    //                   style: blackColor.copyWith(
    //                     fontSize: 24,
    //                     fontWeight: semiBold,
    //                   ),
    //                 ),
    //                 Text(
    //                   'Yogyakarta',
    //                   style: greyColor.copyWith(
    //                     fontWeight: light,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ],
    //         ),
    //       ],
    //     ),
    //   );
    // }

    Widget bookingDetails() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // NOTE : DESTINATION TILE
            Row(
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
                        'film1.png',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Centauro (2022)',
                        style: blackColor.copyWith(
                          fontWeight: medium,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Action',
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
                          image: DecorationImage(
                              image: AssetImage('icon_star.png'))),
                    ),
                    Text(
                      '4.8',
                      style: blackColor.copyWith(
                        fontWeight: medium,
                      ),
                    )
                  ],
                ),
              ],
            ),
            //NOTE : BOOKING DETAILS
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'Booking Details',
                style: blackColor.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ),
            // NOTE : BOOKING DETAIL ITEM
            BookingDetailItem(title: 'Order', valueText: '1 Person'),
            BookingDetailItem(title: 'Seat', valueText: 'B1'),
            BookingDetailItem(title: 'Insurance', valueText: 'YES'),
            BookingDetailItem(title: 'Refundable', valueText: 'NO'),
            BookingDetailItem(title: 'Price', valueText: 'IDR 75.000,00'),
            BookingDetailItem(title: 'Grand Total', valueText: 'IDR 75.000,00'),
          ],
        ),
      );
    }

    Widget paymentDetails() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Details',
              style: blackColor.copyWith(
                fontWeight: semiBold,
                fontSize: 16,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 70,
                    margin: EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('image_card.png'))),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            margin: EdgeInsets.only(right: 6),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('icon_logo.png'),
                              ),
                            ),
                          ),
                          Text(
                            'Pay',
                            style: whiteColor.copyWith(
                              fontSize: 16,
                              fontWeight: medium,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IDR 75.000,00',
                          style: blackColor.copyWith(
                            fontSize: 18,
                            fontWeight: medium,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Curent Balance',
                          style: greyColor.copyWith(
                            fontWeight: light,
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
      );
    }

    Widget paymentNowButton() {
      return CustomBottom(
        title: 'Pay Now',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SuccesCheckoutPage(),
            ),
          );
        },
        margin: EdgeInsets.only(top: 30),
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top: 30,
          bottom: 30,
        ),
        child: Text(
          'Terms and Conditions',
          style: greyColor.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          //route(),
          bookingDetails(),
          paymentDetails(),
          paymentNowButton(),
          tacButton(),
        ],
      ),
    );
  }
}
