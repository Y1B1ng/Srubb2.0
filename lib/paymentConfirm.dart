import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'home.dart';
import 'bookingStatus.dart';



class paymentConfirm extends StatefulWidget {
  const paymentConfirm({Key? key}) : super(key: key);

  @override
  State<paymentConfirm> createState() => _paymentConfirmState();
}

class _paymentConfirmState extends State<paymentConfirm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Image(image: NetworkImage('https://media.tenor.com/0AVbKGY_MxMAAAAM/check-mark-verified.gif'),
              height: 150.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Text(
              'Your Payment was done successfully',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),

          ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(18.0),
                    side: BorderSide(
                      color: Color(0xffffe599),
                      width: 3.0,
                    ),
                  ),
                ),
              ),
              child: Text('OK', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>bottomBarNavi(),
                  ),);
              }
          ),
        ],
      ),

    );
  }
}
