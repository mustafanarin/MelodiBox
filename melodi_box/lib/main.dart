import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:melodi_box/ui/views/opening_screen_one.dart';
import 'package:melodi_box/ui/views/opening_screen_three.dart';
import 'package:melodi_box/ui/views/opening_screen_two.dart';
import 'package:melodi_box/ui/views/page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          centerTitle: true
        ),
        scaffoldBackgroundColor: const Color(0xfff7ede2),
        useMaterial3: true,
      ),
      home:  const PageViewScreen(),
    );
  }
}
