import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const SlotMApp());
}

class SlotMApp extends StatelessWidget {

  const SlotMApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Slot Machine",),
          backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.black,
      body: Slot(),
      ),
    );
  }
}
class Slot extends StatefulWidget {

  Slot({Key? key}) : super(key: key);

  @override
  State<Slot> createState() => _SlotState();
}

class _SlotState extends State<Slot> {
  var slotnumber1 = Random().nextInt(10);

  var slotnumber2 = Random().nextInt(10);

  var slotnumber3 = Random().nextInt(10);

  void setSlotNumber(){
    
    setState(() {
      slotnumber1 = Random().nextInt(10);
      slotnumber2 = Random().nextInt(10);
      slotnumber3 = Random().nextInt(10);
    });
    debugPrint("$slotnumber1 $slotnumber2 $slotnumber3");
    
  }

  Expanded createExpanded(int slotnumber){
    return  Expanded(
            child: TextButton(
              onPressed: setSlotNumber,
              child: Image.asset('images/$slotnumber.png')),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Row(
        children: [
          createExpanded(slotnumber1),
          createExpanded(slotnumber2),
          createExpanded(slotnumber3),
        ]
        ),
    );
  }
}