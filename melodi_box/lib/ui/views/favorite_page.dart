import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  final String _textButtonText = "Eklemeye Başla";
  final String _titleText = "Henüz favori melodi eklenmedi";
  final String _appBarTitle = "MelodiBox";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _Appbar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _TitleText(titleText: _titleText),
            _TextButtonWithIcon(textButtonText: _textButtonText)
          ],
        ),
      )
    );
  }

  AppBar _Appbar(BuildContext context) {
    return AppBar(
      title: Text(_appBarTitle,style: Theme.of(context).textTheme.headlineSmall?.copyWith(
          fontWeight: FontWeight.bold
        )),
      actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.notifications_none_outlined))
        ],
    );
  }
}

class _TitleText extends StatelessWidget {
  const _TitleText({
    super.key,
    required String titleText,
  }) : _titleText = titleText;

  final String _titleText;

  @override
  Widget build(BuildContext context) {
    return Text(_titleText,style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),);
  }
}

class _TextButtonWithIcon extends StatelessWidget {
  const _TextButtonWithIcon({
    super.key,
    required String textButtonText,
  }) : _textButtonText = textButtonText;

  final String _textButtonText;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: (){}, label: Text(_textButtonText,style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.brown)) ,icon: const Icon(Icons.add_outlined,color: Colors.brown,));
  }
}