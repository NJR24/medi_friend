import 'package:flutter/material.dart';
import 'package:medi_friend/src/util/commons.dart';

class TreatmentPage extends StatefulWidget {
  const TreatmentPage({Key? key}) : super(key: key);

  @override
  State<TreatmentPage> createState() => _TreatmentPageState();
}

class _TreatmentPageState extends State<TreatmentPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              SizedBox(
                height: ScreenSize.height(context, 0.25),
              width: ScreenSize.height(context, 0.25),
                child: Image.asset("assets/images/today_page.jpg")),
              Text(
                "Get Started",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenSize.width(context, 0.05),
                ),
              ),
              SizedBox(height: ScreenSize.height(context, 0.01)),
              Text(
                "Receive reminders about medications,activities and more",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: ScreenSize.width(context, 0.04),
                ),
              ),
              ElevatedButton(onPressed: (){}, child: Text("ADD FIRST REMINDER"))
            ],
          ),
        ),
      ),
    );
  }
}
