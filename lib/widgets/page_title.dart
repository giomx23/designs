import 'package:flutter/material.dart';


// ignore: use_key_in_widget_constructors
class PageTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Classify transaction', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
            SizedBox(height: 5,),
            Text('Classify this transaction into a particular category', style: TextStyle(color: Colors.white),),
          ],
        ),
         ),
    );
  }
}