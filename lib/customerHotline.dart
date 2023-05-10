import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customerHotline extends StatefulWidget {
  const customerHotline({Key? key}) : super(key: key);

  @override
  State<customerHotline> createState() => _customerHotlineState();
}

class _customerHotlineState extends State<customerHotline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      appBar: AppBar(
        title: Text('Contact Us'),
      ),

    body: SingleChildScrollView(
    scrollDirection: Axis.vertical,
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),

    child: Align(
      alignment: Alignment.center,
      child: Column(
    children: [
      SizedBox(height: 40),
      Row(
        children: [
          Icon(Icons.call, color: Colors.yellowAccent),
          Text('WhatsApp or Call at:', style: TextStyle(fontSize: 25), textAlign: TextAlign.center),
        ],
      ),
      SizedBox(height: 10),
      Row(
        children: [
          Text('(+60)113 6554 6534', style: TextStyle(fontSize: 18), textAlign: TextAlign.center),
        ],
      ),

      SizedBox(height: 40),
      Row(
        children: [
          Icon(Icons.schedule, color: Colors.yellowAccent),
          Text('Operation Hours:', style: TextStyle(fontSize: 25)
          ),],),

      SizedBox(height: 10),
      Row(
        children: [
          Text('Monday - Friday: 8.00am to 6.00pm', style: TextStyle(fontSize: 16),
          ),],),

      SizedBox(height: 10),
      Row(
        children:[
          Text('Weekend/Public Holidays: Close for Business', style: TextStyle(fontSize: 16),
          ),],),

        ],
      ),
    ),
    ),
    );
  }
}
