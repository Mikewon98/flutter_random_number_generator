import 'package:flutter/material.dart';
import 'package:my_app/range_selector_page.dart';

void main() {
  runApp(const WidgetApp());
}

class WidgetApp extends StatelessWidget {
  const WidgetApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Randomizer',
      home: RangeSelectorPage(),
    );
  }
}
