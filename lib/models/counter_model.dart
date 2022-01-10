class CounterModel{
  static int _count = 0;
  static int get count => _count;

  static int incrementCounter() => ++_count;
  static int decrementCounter() => --_count;
}