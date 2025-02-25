import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "First App",
    home: Scaffold(
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton("ok"),
          Container(height: 11,),
          CustomButton("save"),
          Container(height: 11,),
          CustomButton("click"),
          Container(height: 11,),
          CustomButton("done"),
          Container(height: 11,),
          CustomButton("apply")
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String title;
  CustomButton(this.title);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('onTap'); // When clicking the button, output 'onTap'
      },
      child: Container(
        height: 40,
        width: 100,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.blue,
          borderRadius: BorderRadius.circular(11),
        ),
        child: Center(
          child: Text(
            title, // Use the passed title instead of hardcoding "ok"
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
