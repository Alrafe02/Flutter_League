import 'package:flutter/material.dart';
import 'package:flutter_riot_api/providers/home_provider.dart';
import 'package:flutter_riot_api/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

//TODO:  Tengo q actualizar los items desde aqui -> https://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/assets/
//TODO: O desde aqui -> http://ddragon.leagueoflegends.com/cdn/13.20.1/img/item/1001.png
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
      },
    );
  }
}
