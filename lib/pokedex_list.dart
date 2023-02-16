import 'package:flutter/material.dart';
import 'package:pokedex/cards/pokemon_card.dart';

class PokedexList extends StatelessWidget {
  const PokedexList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const PokedexHomePage(),
    );
  }
}

class PokedexHomePage extends StatefulWidget {
  const PokedexHomePage({Key? key}) : super(key: key);

  @override
  State<PokedexHomePage> createState() => _PokedexHomePageState();
}

class _PokedexHomePageState extends State<PokedexHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(43, 41, 44, 1),
      appBar: AppBar(
        title: const Text("Pokedex"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Pokemon(),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
