import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/view/home_view.dart';
import 'package:getx_app/view/login_view.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      title: 'GetX App',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.rightToLeft,
      getPages: [
        GetPage(
          name: '/loginView',
          page: () => LoginView(),
        ),
        GetPage(
          name: '/homeView',
          page: () => HomeView(),
        ),
      ],
      initialRoute: '/loginView',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        appBarTheme: AppBarTheme(
          color: Colors.deepOrange,
          textTheme: TextTheme(
            headline6: GoogleFonts.exo2(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ),
  );
}
