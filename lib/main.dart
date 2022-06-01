import 'package:e_med/screens/auth/view/auth_view.dart';
import 'package:e_med/screens/home/state/home_state.dart';
import 'package:e_med/screens/home/view/main/home_view.dart';
import 'package:e_med/screens/home/view/pages/hospital/hospital_view.dart';
import 'package:e_med/services/navigation/navigation_service.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-med',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: NavigationService.navigatorKey,
      home: HomeMainView(),
    );
  }
}