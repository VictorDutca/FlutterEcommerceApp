import 'package:MobileHub/buisness_logic/view_models/homeScreen_view_model.dart';
import 'package:MobileHub/buisness_logic/view_models/cart_view_model.dart';
import 'package:MobileHub/ui/home_navBar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'services/service_locator.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);
void main() {
  servicesConainer();
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (context) => HomeScreenViewModel()),
    BlocProvider(create: (context) => CartViewModel())
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MobileHub',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      home: NavbarView(),
    );
  }
}
