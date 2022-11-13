import 'package:flutter/material.dart';
import 'package:medi_friend/src/util/commons.dart';
import 'package:medi_friend/src/widgets/button.dart';
import 'package:medi_friend/src/widgets/dialogue_box.dart';
import 'package:medi_friend/src/widgets/dropdown_menu.dart';
import 'package:medi_friend/src/widgets/today_tile.dart';

class TodayPage extends StatefulWidget {
  const TodayPage({Key? key}) : super(key: key);

  @override
  State<TodayPage> createState() => _TodayPageState();
}

class _TodayPageState extends State<TodayPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              height: ScreenSize.height(context, 0.25),
              width: ScreenSize.height(context, 0.25),
              child: Image.asset("assets/images/today_page.jpg")),
          SizedBox(height: ScreenSize.height(context, 0.15)),
          Text(
            "Easily track your tasks",
            style: TextStyle(
              fontSize: ScreenSize.width(context, 0.05),
            ),
          ),
          SizedBox(height: ScreenSize.height(context, 0.01)),
          Text(
            "Your daily tasks will appear here when you schedule them in treatment",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: ScreenSize.width(context, 0.04),
            ),
          ),
          SizedBox(height: ScreenSize.height(context, 0.15)),
          ElevatedButton(onPressed: () {}, child: Text("GO TO TREATMENT"))
        ],
      ),
    );
  }
}

class Today extends StatefulWidget {
  Today({Key? key}) : super(key: key);

  @override
  State<Today> createState() => _TodayState();
}

class _TodayState extends State<Today> {
  final _typeDropDown = TextEditingController();
  final _controller = TextEditingController();
  final _typecontroller = TextEditingController();
List todayList = ["hi", "hello", "welcome"];

  void saveNewReminder (){
    setState(() {
      todayList.add(_controller.text);
      _controller.clear();
  print(_typeDropDown.text);
    });
    Navigator.of(context).pop();
  }
  void addReminder() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogueBox(
            controller: _controller,
          
            onSave: saveNewReminder,
            onCancel: Navigator.of(context).pop,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: todayList.length,
        itemBuilder: (context, index) {
          return TodayTile(
            medicineName: todayList[index],
            //medicineCount: todayList[index],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: addReminder,
      ),
    );
  }
}






//    Add Reminder Page
// class AddReminder extends StatelessWidget {
//   final controller;
//    AddReminder({Key? key, required this.controller}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Container(
//         child: Column(
//           children: [TextField(
//             controller: controller,
//           ),
//           Row(
//             children: [
//               SmallButton(text: "save", onPressed: (){}
//               ),
//               SmallButton(text: "save", onPressed: (){})
//             ],
//           )],
//         ),
//       ),
//     );
//   }
// }
