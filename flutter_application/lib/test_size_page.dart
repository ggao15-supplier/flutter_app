import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'size_utils.dart';

class SizeTestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test size"),
      ),
      body: Center(
        child: Container(
          color: Colors.red,
          width: 200.0.px,
          height: 200.0.px,
          alignment: Alignment.center,
          child: Text(
            "30",
            style: TextStyle(fontSize: 30.0.px),
          ),
        ),
      ),
    );
  }
}
