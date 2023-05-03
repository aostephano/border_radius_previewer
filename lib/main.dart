import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:border_radius_previewer/providers/ProviderOne.dart';
import 'package:border_radius_previewer/pages/MyHomePage.dart';

void main() {
  runApp(const MyApp());
}

//Instantiates providers when app is up
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProviderOne(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Border-radius Previewer',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}
