import 'package:flutter/material.dart';

import '../util/commons.dart';


class ProgressPage extends StatefulWidget {
  const ProgressPage({Key? key}) : super(key: key);

  @override
  State<ProgressPage> createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Column(
      children: [
        SizedBox(
          height: ScreenSize.height(context, 0.25),
              width: ScreenSize.height(context, 0.25),
          child: Image.asset("assets/images/today_page.jpg")),
         Text(
                "Look forward to your charts",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenSize.width(context, 0.05),
                ),
              ),
              SizedBox(height: ScreenSize.height(context, 0.01)),
              Text(
                "After you confirm your first reminder, you will find all your past datas here.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: ScreenSize.width(context, 0.04),
                ),
              ),
      ],
    ));
    
  }
}