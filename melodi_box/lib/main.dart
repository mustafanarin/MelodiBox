import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
          centerTitle: true,
          iconTheme: IconThemeData(
            size: 30
          )
        ),
        tabBarTheme: const TabBarTheme(
          labelColor: Colors.black,
          unselectedLabelColor: Color(0xff7f4f24),
          indicatorColor: Color(0xffede0d4),
          dividerColor: Color(0xffede0d4),
        ),
        bottomAppBarTheme: const BottomAppBarTheme(
           color: Color(0xffede0d4),
        ),
        inputDecorationTheme: const InputDecorationTheme(
           filled: true,
           fillColor: Colors.black12,
           border: InputBorder.none,
        ),
        scaffoldBackgroundColor: const Color(0xfff7ede2),
        useMaterial3: true,
      ),
      home:  const PageViewScreen(),
    );
  }
}
