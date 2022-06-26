import 'package:flutter/material.dart';
import 'package:flutter_1/shared/theme.dart';
import 'package:flutter_1/ui/widget/destination_card.dart';
import 'package:flutter_1/ui/widget/destination_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget AppBar() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Viko Aldi Putra',
                    style: blackColor.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'What are you watching today ?',
                    style: greyColor.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'image_profile.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget popularDestination() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                title: 'Centauro (2022)',
                city: 'Action',
                imageUrl: 'film1.png',
                rating: 4.8,
              ),
              DestinationCard(
                title: 'Attack (2022)',
                city: 'Action',
                imageUrl: 'Film2.png',
                rating: 4.8,
              ),
              DestinationCard(
                title: 'Revenge Girl ',
                city: 'Action',
                imageUrl: 'film3.png',
                rating: 4.8,
              ),
              DestinationCard(
                title: 'Jurassic World ',
                city: 'Action',
                imageUrl: 'film4.png',
                rating: 4.8,
              ),
              DestinationCard(
                title: 'Siege of Robin Hood',
                city: 'Action',
                imageUrl: 'film5.png',
                rating: 4.8,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 100,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Comedy Movie genre',
            style: blackColor.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
          DestinationTile(
            title: 'Ngeri Ngeri Sedap',
            city: '2022',
            imageUrl: 'film6.png',
            rating: 4.8,
          ),
          DestinationTile(
            title: 'Naga Naga Naga',
            city: '2022',
            imageUrl: 'film7.png',
            rating: 4.3,
          ),
          DestinationTile(
            title: 'My Sassy Girl',
            city: '2022',
            imageUrl: 'film8.png',
            rating: 4.9,
          ),
          DestinationTile(
            title: 'I Need You Baby',
            city: '2022',
            imageUrl: 'film9.png',
            rating: 4.2,
          ),
          DestinationTile(
            title: 'Baby Blues',
            city: '2022',
            imageUrl: 'film10.png',
            rating: 4.5,
          ),
        ]),
      );
    }

    return ListView(
      children: [
        AppBar(),
        popularDestination(),
        newDestination(),
      ],
    );
  }
}
