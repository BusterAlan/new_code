import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    if (counter == -1) {
      counter = 0;
    }
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontSize25 = TextStyle(
      fontSize: 25,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Counter App'),
        ),
        elevation: 20.0,
      ),
      backgroundColor: const Color.fromARGB(255, 191, 216, 185),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Cuenta de clicks',
              style: fontSize25,
            ),
            Text(
              '$counter',
              style: fontSize25,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ActionButtons(
        increaseFunction: increase,
        decreaseFunction: decrease,
        resetFunction: reset,
      ),
    );
  }
}

class ActionButtons extends StatelessWidget {
  final Function increaseFunction;
  final Function decreaseFunction;
  final Function resetFunction;

  const ActionButtons({
    Key? key,
    required this.increaseFunction,
    required this.decreaseFunction,
    required this.resetFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          // BOTÓN DE SUMA
          child: const Icon(Icons.thumb_up),
          onPressed: () => increaseFunction(),
        ),
        FloatingActionButton(
          // BOTÓN DE RESETEO
          child: const Icon(Icons.add_chart),
          onPressed: () => resetFunction(),
        ),
        FloatingActionButton(
          // BOTÓN DE RESTA
          onPressed: () => decreaseFunction(),
          child: const Icon(Icons.account_tree),
        ),
      ],
    );
  }
}
