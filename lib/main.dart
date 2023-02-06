import 'package:flutter/material.dart';
import 'package:indicultre/home.dart';
import 'package:indicultre/screens/details.dart';
import 'package:indicultre/screens/splash.dart';
import 'package:indicultre/utils/routes.dart';
import 'package:indicultre/screens/connectwallet.dart';
import 'package:indicultre/screens/profile.dart';
import 'package:indicultre/screens/details.dart';
import 'package:indicultre/screens/place_bid.dart';
import 'package:indicultre/screens/all_nft.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "IndiCultre",
      initialRoute: 'splash',
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const SplashScreen(),
        MyRoutes.home:(context)=>const Home(),
        MyRoutes.wallet:(context)=>const ConnectWallet(),
        MyRoutes.profile:(context)=> const Profile(), 
        MyRoutes.details:(context)=>const Details(),
        MyRoutes.all:(context)=>const All(),
      },
    );
  }
}
