import 'package:flutter/material.dart';
import 'package:medi_friend/src/screens/progress_page.dart';
import 'package:medi_friend/src/screens/today_page.dart';
import 'package:medi_friend/src/screens/treatment_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selectedPage = 0;
  final _pageOptions = [
    ProgressPage(),
    Today(),
    TreatmentPage()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: _pageOptions[selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart),
              label: "Progress"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.today),
              label: "Today"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.medication_outlined),
              label: "Treatment"
            )
          ],
        currentIndex: selectedPage,
        onTap: (index) {
          setState(() {
            selectedPage = index;
          });
        },
        ),
      ),
    );
  }
}
