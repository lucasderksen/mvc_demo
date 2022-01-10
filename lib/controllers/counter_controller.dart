import 'package:flutter/cupertino.dart';
import 'package:mvc_demo/models/counter_model.dart';

class CounterController extends ChangeNotifier{

  int get counter => CounterModel.count;

  incrementCounter(){
    CounterModel.incrementCounter();
    notifyListeners();
  }

  decrementCounter(){
    CounterModel.decrementCounter();
    notifyListeners();
  }
}