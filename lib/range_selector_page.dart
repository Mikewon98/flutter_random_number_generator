import 'package:flutter/material.dart';
import 'package:my_app/randomizer_page.dart';
import 'package:my_app/range_selector_form.dart';

class RangeSelectorPage extends StatefulWidget {
  const RangeSelectorPage({super.key});

  @override
  State<RangeSelectorPage> createState() => _RangeSelectorPageState();
}

class _RangeSelectorPageState extends State<RangeSelectorPage> {
  final formKey = GlobalKey<FormState>();

  final minValue = TextEditingController();
  final maxValue = TextEditingController();

  int min = 0;
  int max = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Range'),
      ),
      body: RangeSelectorForm(
        formKey: formKey,
        minValueSetter: (value) => min = value,
        maxValueSetter: (value) => max = value,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (formKey.currentState?.validate() == true) {
            formKey.currentState?.save();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => RandomizerPage(min: min, max: max),
              ),
            );
          }
        },
        child: const Icon(Icons.forward),
      ),
    );
  }
}
