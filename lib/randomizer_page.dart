import 'dart:math';

import 'package:flutter/material.dart';

class RandomizerPage extends StatefulWidget {
  final int min, max;

  const RandomizerPage({
    super.key,
    required this.min,
    required this.max,
  });

  @override
  State<RandomizerPage> createState() => _RandomizerPageState();
}

class _RandomizerPageState extends State<RandomizerPage> {
  int? _generatedNumber;
  final randomGenerator = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Randomizer'),
      ),
      body: Center(
        child: Text(
          _generatedNumber?.toString() ?? 'Genrate a number',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Generate'),
        onPressed: () {
          setState(() {
            _generatedNumber = widget.min +
                randomGenerator.nextInt(widget.max + 1 - widget.min);
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
