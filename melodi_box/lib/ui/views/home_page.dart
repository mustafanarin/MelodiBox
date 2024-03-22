import 'package:flutter/material.dart';
import 'package:melodi_box/data/entity/instrument.dart';
import 'package:melodi_box/ui/views/detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const String _appBarTitle = "MelodiBox";
  static const String _textGitar = "Gitar";
  static const String _textPiyano = "Piyano";
  static const String _textKeman = "Keman";
  static const String _textBateri = "Bateri";
  static const String _textKlarnet = "Klarnet";
  static const String _textSaz = "Saz";
  static const String _textFieldHint = "Ne dinlemek istiyorsun?";
  static const String _title = "En çok dinlenenler";

  late final List<Instrument> _instruments;
  @override
  void initState() {
    super.initState();
    _instruments = InstrumentItems().instruments;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: const Icon(Icons.menu_outlined),),
          title:  Text(_appBarTitle,style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold
          )),
          actions: [
            IconButton(
              onPressed: (){},
              icon: const Icon(Icons.notifications_none_outlined))
          ],
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            _TextField(),
            _RowButtonsCatagory(),
            const Row(children: [_TitlePageText(title: _title),Spacer()],),
            Expanded( child: _GridViewBuilder(instruments: _instruments),)
          ],
        ),
      ),
    );
  }

  TextField _TextField() {
    return const TextField(decoration: InputDecoration(hintText: _textFieldHint,
              suffixIcon: Icon(Icons.search_outlined),),);
  }

  SingleChildScrollView _RowButtonsCatagory() {
    return const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _EnsturmanButton(textGitar: _textBateri),
      _EnsturmanButton(textGitar: _textGitar),
      _EnsturmanButton(textGitar: _textKeman),
      _EnsturmanButton(textGitar: _textKlarnet),
      _EnsturmanButton(textGitar: _textPiyano),
      _EnsturmanButton(textGitar: _textSaz),
    ],
  ),
          );
  }
}

class _GridViewBuilder extends StatelessWidget {
  const _GridViewBuilder({
    super.key,
    required List<Instrument> instruments,
  }) : _instruments = instruments;

  final List<Instrument> _instruments;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:2,
        childAspectRatio: 1/1.5
      ),
      itemCount: _instruments.length,
      itemBuilder: (context,index) {
        return GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(instrument: _instruments[index])));
          },
          child: _CardDesign(model: _instruments[index]));
      });
  }
}



class _TitlePageText extends StatelessWidget {
  const _TitlePageText({
    super.key,
    required String title,
  }) : _title = title;

  final String _title;

  @override
  Widget build(BuildContext context) {
    return Text(_title,style: Theme.of(context).textTheme.headlineMedium?.copyWith(
      fontWeight: FontWeight.bold
    ),);
  }
}

class _CardDesign extends StatelessWidget {
  const _CardDesign({
    super.key,
    required Instrument model,
  }) : _model = model;

  final Instrument _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffe6ccb2),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 48,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.width * 0.4,
                child: Image.asset(_model.instrumentImagePath)),
            ),
            Expanded(flex:16,child: Text(_model.songName,style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),)),
            const Spacer(flex: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Expanded(flex:8,child: Text(_model.instrumentName,style: Theme.of(context).textTheme.bodyMedium,)),
                 IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border_outlined))
              ],
            ),
             const Spacer(flex: 1)
          ],),
      ),
    );
  }
}

class _EnsturmanButton extends StatelessWidget {
  const _EnsturmanButton({
    super.key,
    required String textGitar,
  }) : _textGitar = textGitar;

  final String _textGitar;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(backgroundColor:const Color(0xffd5bdaf)),
        child: Text(_textGitar,style: Theme.of(context).textTheme.titleMedium,)
      ),
    );
  }
}

class InstrumentItems {
  late final List<Instrument> instruments;

  InstrumentItems(){
    instruments = [
      Instrument(instrumentName: "Gitar", instrumentImagePath: "assets/images/gitar.png",
      songName: "Acının İlacı - Adamlar"),
      Instrument(instrumentName: "Keman", instrumentImagePath:"assets/images/keman.png",
      songName: "Fairytale - Alexander Rybak"),
      Instrument(instrumentName: "Bateri", instrumentImagePath: "assets/images/bateri.png",
      songName: "Her şeyi yak - Duman"),
      Instrument(instrumentName: "Piyano", instrumentImagePath: "assets/images/piano.png",
      songName: "Turkish March - Mozart")
    ];
  }
}