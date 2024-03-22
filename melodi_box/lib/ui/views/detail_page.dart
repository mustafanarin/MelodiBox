import 'package:flutter/material.dart';

import 'package:melodi_box/data/entity/instrument.dart';

// ignore: must_be_immutable
class DetailPage extends StatefulWidget {
  Instrument instrument;
  DetailPage({
    super.key,
    required this.instrument,
  });
  


  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  static const String _titleAppBar = "Şu an çalıyor";
  static const String _musicTimeImagePath = "assets/images/muzikSure.png";
  static const String _timeLowText = "2:51";
  static const String _timeHeightText = "3:17";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_titleAppBar),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(flex: 5,),
            Expanded(flex:50,
              child: Container(
                color: const Color(0xffe6ccb2),
                child: FittedBox(child: Image.asset(widget.instrument.instrumentImagePath,fit: BoxFit.fitWidth,))),
            ),
            const Spacer(flex: 5,),
            Text(widget.instrument.songName,style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
            const Spacer(flex: 5,),
            Text(widget.instrument.instrumentName,style: Theme.of(context).textTheme.bodyLarge,),
            const Spacer(flex: 5,),
            Expanded(flex:20,child: Image.asset(_musicTimeImagePath)),
            const Expanded(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_timeLowText),
                  Text(_timeHeightText),
                ],
              ),
            ),
            const Spacer(flex: 15,)
          ],
        ),
      ),
    );
  }
}