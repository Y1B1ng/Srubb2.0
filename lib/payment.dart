import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'paymentConfirm.dart';

class payment extends StatefulWidget {
  @override
  _paymentState createState() => _paymentState();
}

class _paymentState extends State<payment> {
  String _paymentMethod = '';

  void _handlePaymentMethod(String? value) {
    setState(() {
      _paymentMethod = value ?? '';
    });

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffcbcbcb),
      appBar: AppBar(
        title: Text('Payment Method'),
      ),
      body: Column(
        children: [
          ListTile(
          leading: Icon(Icons.attach_money),
          title: Text('Cash'),
          subtitle: Text('Pay with cash upon delivery'),
          trailing: Radio(
          value: 'cash',
          groupValue: _paymentMethod,
          onChanged: _handlePaymentMethod,
          ),),

          ListTile(
            leading: Icon(Icons.credit_card),
            title: Text('Credit Card / Debit car'),
            subtitle: Text('Pay with your Visa or Mastercard'),
            trailing: Radio(
              value: 'credit_card or debit_card',
              groupValue: _paymentMethod,
              onChanged: _handlePaymentMethod,
          ),),

          ListTile(
            leading: Icon(Icons.phone_android),
            title: Text('E Wallet'),
            subtitle: Text('Pay with your TnG eWallet or GrabPay'),
            trailing: Radio(
              value: 'mobile_payment',
              groupValue: _paymentMethod,
              onChanged: _handlePaymentMethod,
            ),
          ),

          SizedBox(height: 40),
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
              child: Text('PAY', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>paymentConfirm(),
                  ),);
              }
          ),
        ],
      ),
    );
  }
}
