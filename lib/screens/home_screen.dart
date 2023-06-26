import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const fontSize25 = TextStyle(
      fontSize: 25,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('App Home'),
        ),
        elevation: 20.0,
      ),
      backgroundColor: const Color.fromARGB(255, 191, 216, 185),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Cuenta de clicks',
              style: fontSize25,
            ),
            Text(
              '0',
              style: fontSize25,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.thumb_up),
        onPressed: () {
          print('Hello OwO');
        },
      ),
    );
  }
}
