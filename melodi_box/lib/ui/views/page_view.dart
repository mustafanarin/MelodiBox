import 'package:flutter/material.dart';
import 'package:melodi_box/ui/views/opening_screen_one.dart';
import 'package:melodi_box/ui/views/opening_screen_three.dart';
import 'package:melodi_box/ui/views/opening_screen_two.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  
  //final _pageController = PageController();

  int _currentPageIndex = 0;
  final int _pageCounter = 3;

  void _updatePageIndex(int index){
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Column(
        children: [
          const Spacer(flex: 85,),
          _PageCounterText(currentPageIndex: _currentPageIndex, pageCounter: _pageCounter),
          const Spacer(flex: 10,),
          const _SkipButton(),
          const Spacer(flex: 5,)
        ],
      ),
      body: PageView(
        onPageChanged: _updatePageIndex,
        children: const [
          OpeningScreenOne(),
          OpeningScreenTwo(),
          OpeningScreenThree()
        ],
      ),
    );
  }
}

class _SkipButton extends StatelessWidget {
  const _SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: (){},backgroundColor: const Color(0xffd5bdaf),child: const Icon(Icons.arrow_right_alt_outlined,size: 40,));
  }
}

class _PageCounterText extends StatelessWidget {
  const _PageCounterText({
    super.key,
    required int currentPageIndex,
    required int pageCounter,
  }) : _currentPageIndex = currentPageIndex, _pageCounter = pageCounter;

  final int _currentPageIndex;
  final int _pageCounter;

  @override
  Widget build(BuildContext context) {
    return Text("${(_currentPageIndex + 1).toString()}/$_pageCounter", style: Theme.of(context).textTheme.bodyMedium,);
  }
}