import 'package:ShopyFast/buisness_logic/view_models/homeScreen_view_model.dart';
import 'package:ShopyFast/ui/homeScreen_view.dart';
import 'package:ShopyFast/ui/home_navBar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'services/service_locator.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);
void main() {
  servicesConainer();
  runApp(
      BlocProvider(create: (context) => HomeScreenViewModel(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ShopyFast',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      home: HomeScreenView(),
    );
  }
}
