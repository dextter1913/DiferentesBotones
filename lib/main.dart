import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: MyHomePage(),
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
      appBar: AppBar(
        title: const Text("Diferentes Botones"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.green,
                ),
              ),
              onPressed: () => _raisedButton(),
              child: const Text("RaisedButton = ElevatedButton"),
            ),
            TextButton(
              onPressed: _flatButton,
              child: const Text("Flat button = TextButton"),
            ),
            IconButton(
              onPressed: _iconButton,
              icon: const Icon(
                Icons.account_balance_wallet_sharp,
              ),
            ),
            OutlinedButton(
              // se puede redondear bordes y personalizar el boton
              onPressed: _outlinedButton,
              style: OutlinedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
              ),
              child: const Text("OutlinedButton"),
            ),
          ],
        ),
      ),
    );
  }

  _raisedButton() {
    if (kDebugMode) {
      print("RaisedButton = ElevatedButton");
    }
  }

  void _flatButton() {
    if (kDebugMode) {
      print("Flat button = TextButton");
    }
  }

  void _iconButton() {
    if (kDebugMode) {
      print("icon button");
    }
  }

  void _outlinedButton() {
    if (kDebugMode) {
      print("outlinedButton");
    }
  }
}
