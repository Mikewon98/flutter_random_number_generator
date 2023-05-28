import 'package:flutter/material.dart';
import 'package:my_app/randomizer_change_notifier.dart';
import 'package:my_app/range_selector_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const WidgetApp());
}

class WidgetApp extends StatelessWidget {
  const WidgetApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RandomizerChangeNotifier(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Randomizer',
        home: RangeSelectorPage(),
      ),
    );
  }
}
