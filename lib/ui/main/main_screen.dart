import 'package:flutter/material.dart';

import '../component/post_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Layout'),
        ),
        body: ListView(
          children: const [
            PostWidget(),
          ],
        ));
  }
}
