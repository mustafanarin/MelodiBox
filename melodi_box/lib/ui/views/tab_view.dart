import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:melodi_box/ui/views/opening_screen_one.dart';
import 'package:melodi_box/ui/views/opening_screen_three.dart';

class TabView extends StatefulWidget {
  const TabView({super.key});

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {

  static const String _tabTextHome = "Anasayfa";
  static const String _tabTextFavorite = "Favoriler";
  static const String _tabTextProfile = "Profil";

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3, 
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home_outlined,),child: Text(_tabTextHome),),
              Tab(icon: Icon(Icons.favorite_border_outlined),child: Text(_tabTextFavorite),),
              Tab(icon: Icon(Icons.person_outlined),child: Text(_tabTextProfile),),
            ],),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            OpeningScreenThree(),
            OpeningScreenOne(),
            OpeningScreenThree()
          ],
        ),
      ));
  }
}

