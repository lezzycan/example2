import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/counter_model.dart';
import '../route_folder/routes_name.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteName.showCounter);
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: ((_) => ChangeNotifierProvider.value(
                //       value: context.read<Counter>(),
                //       child: const ShowCounter()))));
              },
              child: const Text(
                'Show Me Counter',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                context.read<Counter>().increment();
              },
              child: const Text(
                'Increment counter',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
