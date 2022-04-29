import 'package:flutter/material.dart';

import 'layout/home_layout.dart';

void main() {
  runApp(Myapp());
}

// create class from type statelesswidget
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeLayout(),
    );
  }
}
