import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
  static const String _musicTimeImagePath = "assets/images/muzikSuresi.png";
  static const String _timeLowText = "1:32";
  static const String _timeHeightText = "3:17";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(_titleAppBar)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(flex: 5,),
            Expanded(flex:50,child: _ImageInstrument(widget: widget),),
            const Spacer(flex: 5,),
            _SongNameText(widget: widget),
            const Spacer(flex: 5,),
            _InstrumentNameText(widget: widget),
            const Spacer(flex: 5,),
            Expanded(flex:10,child: Image.asset(_musicTimeImagePath,color: Colors.black,)),
            const Expanded(flex: 5,
              child: _TimeRow(timeLowText: _timeLowText, timeHeightText: _timeHeightText),
            ),
            const Expanded(flex: 15,child: _MusicPouseButtonRow(),),
            const Spacer(flex: 5,)
          ],
        ),
      ),
    );
  }
}

class _ImageInstrument extends StatelessWidget {
  const _ImageInstrument({
    super.key,
    required this.widget,
  });

  final DetailPage widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffe6ccb2),
      child: FittedBox(child: Image.asset(widget.instrument.instrumentImagePath,fit: BoxFit.fitWidth,)));
  }
}

class _SongNameText extends StatelessWidget {
  const _SongNameText({
    super.key,
    required this.widget,
  });

  final DetailPage widget;

  @override
  Widget build(BuildContext context) {
    return Text(widget.instrument.songName,style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold));
  }
}

class _InstrumentNameText extends StatelessWidget {
  const _InstrumentNameText({
    super.key,
    required this.widget,
  });

  final DetailPage widget;

  @override
  Widget build(BuildContext context) {
    return Text(widget.instrument.instrumentName,style: Theme.of(context).textTheme.bodyLarge,);
  }
}

class _TimeRow extends StatelessWidget {
  const _TimeRow({
    super.key,
    required String timeLowText,
    required String timeHeightText,
  }) : _timeLowText = timeLowText, _timeHeightText = timeHeightText;

  final String _timeLowText;
  final String _timeHeightText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(_timeLowText),
        Text(_timeHeightText),
      ],
    );
  }
}

class _MusicPouseButtonRow extends StatelessWidget {
  const _MusicPouseButtonRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_double_arrow_left_outlined)),
        FloatingActionButton(
          backgroundColor: Colors.black26,
          elevation: 0,
          shape: const CircleBorder(),
          onPressed: (){},
          child: const Icon(Icons.arrow_right_outlined,size: 40,),),
        IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_double_arrow_right_outlined)),
      ],
    );
  }
}