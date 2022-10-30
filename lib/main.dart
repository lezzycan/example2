import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/models/counter_model.dart';
import 'route_folder/routes.dart'; 


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.top]).then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Counter>(
      create: (context) => Counter(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.red),
          scaffoldBackgroundColor: Colors.white24,
        ),
         onGenerateRoute: Routes.generateRoute
        // routes: {
        //   '/' : (context) => const HomePage(),
        //   'counter' : (context) => const ShowCounter(), 
        // },
        // home: const HomePage(),
      ),
    );
  }
}
