import 'package:flutter/material.dart';
import 'package:flutter_1/shared/theme.dart';
import 'package:flutter_1/ui/pages/cubit/page_cubit.dart';
import 'package:flutter_1/ui/pages/home_page.dart';
import 'package:flutter_1/ui/pages/menu_page1/listfilm.dart';
import 'package:flutter_1/ui/pages/menu_page1/transaction_page.dart';
import 'package:flutter_1/ui/pages/setting_page.dart';
import 'package:flutter_1/ui/pages/wallet_page.dart';
import 'package:flutter_1/ui/widget/custom_bottom_navigation.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget BuildContext(int currenIndex) {
      switch (currenIndex) {
        case 0:
          return HomePage();
        case 1:
          return ListFilm();
        case 2:
          return walletPage();
        case 3:
          return SettingPage();
        default:
          return HomePage();
      }
    }

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          height: 60,
          decoration: BoxDecoration(
              color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigationItem(
                index: 0,
                imageUrl: 'icon_home.png',
              ),
              CustomBottomNavigationItem(
                index: 1,
                imageUrl: 'icon_booking.png',
              ),
              CustomBottomNavigationItem(
                index: 2,
                imageUrl: 'icon_card.png',
              ),
              CustomBottomNavigationItem(
                index: 3,
                imageUrl: 'icon_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currenIndex) {
        return Scaffold(
          body: Stack(
            children: [
              BuildContext(currenIndex),
              customBottomNavigation(),
            ],
          ),
        );
      },
    );
  }
}
