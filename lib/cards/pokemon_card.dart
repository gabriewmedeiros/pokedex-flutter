import 'package:flutter/material.dart';

class Pokemon extends StatefulWidget {
  const Pokemon({Key? key}) : super(key: key);

  @override
  State<Pokemon> createState() => _PokemonState();
}

class _PokemonState extends State<Pokemon> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(18.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 12, left: 22, right: 22),
        child: Column(
          children: [
            Image.asset(
              "lib/images/img_pokemons_login.png",
              height: 200,
              width: 200,
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "Pokemons",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
