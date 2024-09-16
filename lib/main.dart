import 'package:flutter/material.dart';
import 'package:myapp/pages/home_page.dart';



void main() {
  runApp(const App());
}

class App extends StatelessWidget //it is immutable i.e, we cannot change it
{
  // const App({super.key});

  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      theme: ThemeData(
        scaffoldBackgroundColor:  const Color.fromRGBO(15, 22, 30, 1.0),
      ),
      home: const HomePage(),

    );
  }
}


