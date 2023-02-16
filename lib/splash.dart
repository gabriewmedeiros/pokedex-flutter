import 'package:flutter/material.dart';
import 'package:pokedex/pokedex_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(42, 49, 80, 1),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: const Text(
                'Welcome to',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const SizedBox(height: 14),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: const Text(
                'Pokedex',
                style: TextStyle(
                    color: Color.fromRGBO(247, 186, 20, 1),
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 80),
            Image.asset(
              "lib/images/img_pokemons_login.png",
              height: 300,
              width: 300,
            ),
            const SizedBox(height: 50),
            Container(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.only(top: 12, bottom: 12),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    const Color.fromRGBO(247, 186, 20, 1),
                  ),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PokedexHomePage()),
                  );
                },
                child: const Text(
                  "Create Account",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            const Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                text: "Already have an account? ",
                style: TextStyle(color: Colors.white),
                children: <InlineSpan>[
                  TextSpan(
                    text: "Login",
                    style: TextStyle(
                      color: Color.fromRGBO(247, 186, 20, 1),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
