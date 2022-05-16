
// // import 'package:data_table_2/data_table_2.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'package:charts_flutter/flutter.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_web_dashboard/controllers/counter_controller.dart';
// import 'package:flutter_application_web_dashboard/screen/other.dart';
// import 'package:get/get.dart';

// class HomeScreen extends StatelessWidget {
//    HomeScreen({super.key});

//   final CounterController counterController = Get.put(CounterController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//       body: Obx(()=>Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children:  [
//           Center(child: Text("Clicks: ${counterController.counter.value}")),
//           const SizedBox(
//             height: 10,
//           ),
//           Center(
//             child: ElevatedButton(
//               onPressed: (){
//                 Get.to(OtherScreen());
//               }, 
//               child: const Text("Open Other Screen ")),
//           ),
//       ]),),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//         counterController.increment();
//       },
//       child: const Icon(Icons.add),),
//     );
//   }
// }