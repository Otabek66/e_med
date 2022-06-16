import 'package:e_med/screens/auth/view/auth_view.dart';
import 'package:e_med/screens/home/state/home_state.dart';
import 'package:e_med/screens/home/view/main/home_view.dart';
import 'package:e_med/screens/home/view/pages/hospital/hospital_view.dart';
import 'package:e_med/services/Boxservice.dart';
import 'package:e_med/services/getstorage.dart';
import 'package:e_med/services/navigation/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await Storageservice.instance.storage.write("day", 10);
  await Storageservice.instance.storage.write("houre", 2);
  await Storageservice.instance.storage.write("month", 10);
  await Hive.initFlutter();
  await BoxService.instance.createBox();
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