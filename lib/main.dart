import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          fontFamily: GoogleFonts.rubik().fontFamily),
      title: "MEDIPLUS",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
