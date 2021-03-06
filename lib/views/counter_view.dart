import 'package:flutter/material.dart';
import 'package:mvc_demo/controllers/counter_controller.dart';
import 'package:mvc_demo/models/counter_model.dart';
import 'package:provider/provider.dart';

class CounterView extends StatefulWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  _CounterViewState createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MVC Counter'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                CounterModel.count.toString(),
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterController>().decrementCounter();
                },
                child: Icon(Icons.exposure_minus_1),
              ),
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterController>().incrementCounter();
                },
                child: Icon(Icons.plus_one),
              ),
            ],
          ),
        ));
  }
}
