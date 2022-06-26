import 'package:flutter/material.dart';
import 'package:flutter_1/shared/theme.dart';
import 'package:flutter_1/ui/pages/checkout_page.dart';
import 'package:flutter_1/ui/widget/custom_bottom.dart';
import 'package:flutter_1/ui/widget/interest_item.dart';
import 'package:flutter_1/ui/widget/photo_item.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('film1.png'),
          ),
        ),
      );
    }

    Widget CustomShadow() {
      return Container(
        width: double.infinity,
        height: 214,
        margin: EdgeInsets.only(top: 236),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kWhiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95)
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          children: [
            //note EMBLEM
            Container(
              width: 108,
              height: 24,
              margin: EdgeInsets.only(
                top: 30,
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('icon_emblem.png'))),
            ),
            //NOTE : TITLE
            Container(
              margin: EdgeInsets.only(top: 256),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Centauro (2022)',
                          style: whiteColor.copyWith(
                            fontSize: 24,
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(
                          'Action',
                          style: whiteColor.copyWith(
                            fontSize: 16,
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
                        style: whiteColor.copyWith(
                          fontWeight: medium,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            //NOTE : Deskripsi
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //about
                  Text(
                    'About',
                    style: blackColor.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Centauro adalah film thriller aksi tahun 2022 yang disutradarai oleh Daniel Calparsoro yang terdiri dari remake dari film Yann Gozlan tahun 2017 Burn Out.',
                    style: blackColor.copyWith(
                      height: 2,
                    ),
                  ),
                  //foto
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Photo',
                    style: blackColor.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      PhotoItem(
                        imageUrl: 'film1_1.png',
                      ),
                      PhotoItem(
                        imageUrl: 'film1_2.png',
                      ),
                      PhotoItem(
                        imageUrl: 'film1_3.png',
                      ),
                    ],
                  ),
                  // NOTE : Interes
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Interest',
                    style: blackColor.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      InterestItem(title: 'Action'),
                      InterestItem(
                        title: '18+',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      InterestItem(
                        title: '2 Hours',
                      ),
                      InterestItem(
                        title: '2d',
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //NOTE PRICE
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 30),
              child: Row(
                children: [
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
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Per Orang',
                          style: greyColor.copyWith(
                            fontWeight: light,
                          ),
                        )
                      ],
                    ),
                  ),
                  //NOTE BOTTOM
                  CustomBottom(
                    title: 'Book Now',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CheckoutPage(),
                        ),
                      );
                    },
                    width: 170,
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImage(),
            CustomShadow(),
            content(),
          ],
        ),
      ),
    );
  }
}
