import 'package:flutter_riverpod/flutter_riverpod.dart';


class CounterNotifier extends StateNotifier<int>{
  CounterNotifier() :super(0);

  int counter=0;
  void incrementData() {
     state++;
  }

  void decrementData() {
    state--;
  }

}


final counterProvider = StateNotifierProvider<CounterNotifier,int>(
  (ref) => CounterNotifier(),);

