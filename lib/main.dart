import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/ui/pages/bonus.dart';
import 'package:flutter_1/ui/pages/cubit/auth_cubit.dart';
import 'package:flutter_1/ui/pages/cubit/page_cubit.dart';
import 'package:flutter_1/ui/pages/get_started.dart';
import 'package:flutter_1/ui/pages/main_page.dart';
import 'package:flutter_1/ui/pages/sign_up.dart';
import 'package:flutter_1/ui/pages/splash.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/get-started': (context) => GetStartedPage(),
          '/sign-up': (context) => SignUpPage(),
          '/bonus': (context) => bonusPage(),
          '/main': (context) => MainPage(),
        },
      ),
    );
  }
}
