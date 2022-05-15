

import 'package:flutter/material.dart';
import 'package:flutter_application_web_dashboard/controllers/counterController.dart';
import 'package:get/get.dart';

class OtherScreen extends StatelessWidget {
   OtherScreen({super.key});

  final CounterController _counterController = Get.find( );

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Center(child: Text("Screen was clicked ${_counterController.counter.value} times")),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: ElevatedButton(
              onPressed: (){
                Get.back();
              }, 
              child: const Text("Open Other Screen ")),
          )


      ]),
    );
  }
}