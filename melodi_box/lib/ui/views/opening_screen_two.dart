// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class OpeningScreenTwo extends StatelessWidget {
  const OpeningScreenTwo({super.key});

  final String _appNameText = "MelodiBox";
  final String _imagePath = "assets/images/kulaklik.png";
  final String _presentationText = "İster çalışırken odaklanmak için arka planda çalan hafif melodiler arayın, ister dinlenmek için duygusal enstrümantal parçaları dinleyin, bu uygulama sizin için ideal bir müzik deneyimi sunar.";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 10,),
              Expanded(flex:30,child: FirstScreenImage(path: _imagePath,)),
              const Spacer(flex: 2,),
              MelodiBoxText(text: _appNameText,),
              const Spacer(flex: 2,),
              PresentationText(text: _presentationText,),
              const Spacer(flex: 35,)
            ],
          ),
        ),
      )
    );
  }
}

class MelodiBoxText extends StatelessWidget {
  const MelodiBoxText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: Theme.of(context).textTheme.headlineLarge?.copyWith(
      fontWeight: FontWeight.bold,
    ),);
  }
}

class PresentationText extends StatelessWidget {
  const PresentationText({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: Theme.of(context).textTheme.bodyLarge,
    textAlign: TextAlign.center,);
  }
}

class FirstScreenImage extends StatelessWidget {
  const FirstScreenImage({
    super.key, required this.path,
  });
  final String path;
  @override
  Widget build(BuildContext context) {
    return Image.asset(path, fit: BoxFit.cover,);
  }
}