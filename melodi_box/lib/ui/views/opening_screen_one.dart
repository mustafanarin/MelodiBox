// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OpeningScreenOne extends StatelessWidget {
  const OpeningScreenOne({super.key});

  final String _imagePath = "assets/images/radyo.png";
  final String _presentationText = "Sözsüz müziklerin keyfini çıkarabileceğiniz bir uygulama ile karşınızdayız! Bu uygulama, kullanıcıların favori enstrümantal parçaları keşfetmelerini sağlar.";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 10,),
              Expanded(flex:30,child: FirstScreenImage(path: _imagePath)),
              const Spacer(flex: 2,),
              const MelodiBoxText(),
              const Spacer(flex: 2,),
              PresentationText(text: _presentationText),
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
  });

  @override
  Widget build(BuildContext context) {
    return Text("MelodiBox",style: Theme.of(context).textTheme.headlineLarge?.copyWith(
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