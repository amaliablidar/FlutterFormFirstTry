import 'package:flutter/material.dart';

class SubmittedScreen extends StatelessWidget {
  const SubmittedScreen({Key? key}) : super(key: key);
  static const route ='/submit';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Submitted'),),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
            Icon(Icons.check_circle, color: Colors.green, size: 100.0,),
            Text('Form Submitted',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
            ],
          )
      ),
    );
  }
}
