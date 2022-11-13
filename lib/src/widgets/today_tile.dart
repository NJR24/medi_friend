import 'package:flutter/material.dart';
import 'package:medi_friend/src/util/commons.dart';
import 'package:medi_friend/src/widgets/dropdown_menu.dart';
import './dialogue_box.dart';
class TodayTile extends StatelessWidget {
 // final Icon pillIcon;
  final String medicineName;
  final  _saveCurrentType =TypeDropdownMenu();
  //final String medicineCount;

   TodayTile(
      {Key? key,
     // required this.pillIcon,
      required this.medicineName,
      //required this.medicineCount
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 200,
      child: Row(
        children: [
          Icon(Icons.medication),
          Column(
            children: [
              Text(medicineName),
              //Text(medicineCount)
              // Text(_saveCurrentType)
            ],
          )
        ],
      ),
    );
  }
}
