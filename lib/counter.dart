import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodcounter/providers/counter_provider.dart';

class CounterScreen extends ConsumerWidget{
  const CounterScreen({super.key});


  @override
  Widget build(BuildContext context,WidgetRef ref) {

    // watching counter state.
    final counter = ref.watch(counterProvider);   
    
    //Access  the notifier to call methods.
    final counterNotifier = ref.read(counterProvider.notifier); 
     return Scaffold(
      appBar: AppBar(
        title:  Text('Counter App Riverpod'.toUpperCase(),
        style: const TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,  
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$counter',
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            ElevatedButton(
              onPressed: (){
                counterNotifier.incrementData();
              },
               child: const Text('Increment'),),
            const SizedBox(height: 50),
           ElevatedButton(
            onPressed: (){
              counterNotifier.decrementData();
            },
            child: const Text('Decrement'))
          ],),),
    );
  }
}