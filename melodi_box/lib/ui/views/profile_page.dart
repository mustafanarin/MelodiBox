import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  static const String _profileNameText = "Mustafa Narin";
  static const String _profilChangeText = "Profilleri değiştir";
  static const String _titleText = "Dinleme Geçmişi";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(context),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(  
            children: [
              Text(_titleText,style: Theme.of(context).textTheme.titleLarge),
              const Divider(),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }

  AppBar _AppBar(BuildContext context) {
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(_profileNameText),
          Text(_profilChangeText,style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.black54))
        ],
      ),
      centerTitle: false,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: IconButton(onPressed: (){},icon: const Icon(Icons.person_2_outlined)),
      ),  
      actions:  [
        IconButton(
          onPressed: (){},
          icon: const Icon(Icons.settings_outlined))
      ],
      
    );
  }
}