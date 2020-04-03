import 'package:flutter/material.dart';
import 'package:awesome_slider/awesome_slider.dart';

void main() => runApp(MainApp());

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  double valueOnTextWidget = 0.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.lightBlueAccent,
                Color(0xFF100887).withOpacity(0.95)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0, 0.5],
            ),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 250.0,
              ),
              Text(
                valueOnTextWidget.round().toString(),
                style: TextStyle(color: Colors.white, fontSize: 150.0),
              ),
              SizedBox(
                height: 80.0,
              ),
              AwesomeSlider(
                value: valueOnTextWidget,
                min: 0.0,
                max: 100.0,
                thumbColor: Color(0xFF100887),
                roundedRectangleThumbRadius: 25.0,
                thumbSize: 100.0,
                topLeftShadow: true,
                topLeftShadowColor: Colors.lightBlueAccent,
                topLeftShadowBlur: MaskFilter.blur(BlurStyle.normal, 11.0),
                bottomRightShadow: true,
                bottomRightShadowColor: Colors.white.withOpacity(0.5),
                bottomRightShadowBlur: MaskFilter.blur(BlurStyle.normal, 11.0),
                activeLineStroke: 2.0,
                activeLineColor: Colors.blueAccent,
                inactiveLineColor: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 28.0,
                    ),
                    SizedBox(width: 10.0),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 28.0,
                    )
                  ],
                ),
                onChanged: (double value) {
                  setState(() {
                    valueOnTextWidget = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
