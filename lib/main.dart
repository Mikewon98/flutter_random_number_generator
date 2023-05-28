import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_app/randomizer_change_notifier.dart';
import 'package:my_app/range_selector_page.dart';

void main() {
  runApp(const WidgetApp());
}

final randomizerProvider =
    ChangeNotifierProvider((ref) => RandomizerChangeNotifier());

class WidgetApp extends StatelessWidget {
  const WidgetApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Randomizer',
        home: RangeSelectorPage(),
      ),
    );
  }
}
