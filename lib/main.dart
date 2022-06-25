import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/home-page/widgets/home-page.dart';
import 'package:portfolio/initialize.dart';
import 'package:portfolio/theme.dart';

void main() async {
  final binding = WidgetsFlutterBinding.ensureInitialized();

  /// Keeps the first frame from showing up before all initialization logic is done. Basically keeps the native html+css loading animation running.
  binding.deferFirstFrame();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: initialize(context),
      builder: (context, snapshot) {
        return GetMaterialApp(
          title: 'Portfolio',
          // darkTheme: ThemeData.from(
          //   colorScheme: darkScheme,
          //   textTheme: GoogleFonts.jostTextTheme(),
          // ),
          theme: ThemeData.from(
            colorScheme: darkScheme,
            textTheme: GoogleFonts.jostTextTheme(),
          ),
          home: const HomePage(),
        );
      },
    );
  }
}
