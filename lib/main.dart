import 'package:flutter/material.dart';
import 'package:mvc_demo/controllers/counter_controller.dart';
import 'package:mvc_demo/models/counter_model.dart';
import 'package:mvc_demo/views/counter_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(create: (_) => CounterController(),
      child: CounterView()),
    );
  }
}
