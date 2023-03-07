import 'package:flutter/material.dart';
import 'package:project7/main.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

class SecondScreen extends StatefulWidget {
  final item;
  final str;
  const SecondScreen({super.key, required this.item, this.str});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        "${widget.item} ${widget.str}",
        style: TextStyle(fontSize: 18),
      ),
    ));
  }
}
