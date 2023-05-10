import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class privacyPolicy extends StatefulWidget {
  const privacyPolicy({Key? key}) : super(key: key);

  @override
  State<privacyPolicy> createState() => _privacyPolicyState();
}

class _privacyPolicyState extends State<privacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      appBar: AppBar(
        title: Text('Scrubb\'s Privacy Policy'),
      ),

    body: SingleChildScrollView(
    scrollDirection: Axis.vertical,
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: Column(
        children: [
          SizedBox(height: 20),
          Text('1. The privacy and personal data policy of Scrubb Company set out in this Privacy Policy and Personal Data Notice apply to all personal data provided'
              ' to Scrubb, whether in electronic form or otherwise. By visiting and/or using this mobile application run and maintained by Scrubb, and other services'
              ' provided by Scrubb as well as by providing personal data to Scrubb, you agree to be bound by the terms and conditions of this Privacy Policy.',
              style: TextStyle(fontSize: 15),textAlign: TextAlign.justify
          ),
          SizedBox(height: 20),
          Text('2. Scrubb\'s collection of your personal data is part of its normal operation of Scrubb\'s services. Scrubb has developed this Privacy Policy to inform you'
              ' about Scrubb\'s policy and practices on personal data and privacy matters.',
              style: TextStyle(fontSize: 15),textAlign: TextAlign.justify
          ),
          SizedBox(height: 20),
          Text('3. Your personal data processed by Scrubb includes your personal details such as name, contact details(mail address, residential address and phone number).',
              style: TextStyle(fontSize: 15),textAlign: TextAlign.justify
          ),

        ],
      ),

    ),

    );
  }
}
