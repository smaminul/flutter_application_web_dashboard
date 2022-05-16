import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_web_dashboard/constants/style.dart';
import 'package:flutter_application_web_dashboard/widgets/custom_text.dart';


/// Example without a datasource
class DriversTable extends StatelessWidget {
  const DriversTable({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
       margin: const EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0,6),
            color: lightGrey.withOpacity(0.1),
            blurRadius: 12.0
          )
        ],
        border: Border.all(color: lightGrey,width: 1)
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              CustomText(text: "Available Drivers", size: 24, color: lightGrey, weight: FontWeight.bold)
            ],
          ),
          DataTable2(
              columnSpacing: 12,
              horizontalMargin: 12,
              minWidth: 600,
              columns: const [
                DataColumn2(
                  label: Text('Name'),
                  size: ColumnSize.L,
                ),
                DataColumn(
                  label: Text('Location'),
                ),
                DataColumn(
                  label: Text('Rating'),
                ),
                DataColumn(
                  label: Text('Action'),
                ),
           
              ],
              rows: List<DataRow>.generate(
                  7,
                  (index) => DataRow(cells: [
                        DataCell(CustomText(color: lightGrey, text: "Robert James", weight: FontWeight.normal, size: 16,)),
                         DataCell(CustomText(color: lightGrey, text: "Chicago", weight: FontWeight.normal, size: 16,)),
                          DataCell(
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children:  [
                                const Icon(Icons.star,  color: Colors.deepOrange,  size: 18 ),
                             const SizedBox(width: 5,),

                             CustomText(text: "4.$index", 
                             size: 16, 
                             color: lightGrey, 
                             weight: FontWeight.normal)
                              ],
                            )),
                          DataCell(
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: active,width: 1),
                                color: light,
                                borderRadius: BorderRadius.circular(20)
                              ),
                              padding: const EdgeInsets.symmetric(horizontal:12,vertical: 6 ),
                              child: CustomText(text: "Block Driver", 
                              color: active.withOpacity(0.7), size: 16, weight: FontWeight.bold,

                              ),
                            )
                          ),
                    
                      
                      ]))),
        ],
      ),
    );
  }
}