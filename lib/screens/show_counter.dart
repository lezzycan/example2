import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/counter_model.dart';

class ShowCounter extends StatelessWidget {
  const ShowCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body:  Center(
        child: Text(
          '${context.watch<Counter>().counter}',
          style: const TextStyle(fontSize: 52.0),
        ),
      ),
    );
  }
}
