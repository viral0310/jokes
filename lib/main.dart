import 'package:flutter/material.dart';
import 'package:joks/screen/jokes_page.dart';

import 'screen/homepage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        'jokes_page': (context) => const JokesPage(),
      },
    ),
  );
}
