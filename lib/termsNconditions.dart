import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class termsNconditions extends StatefulWidget {
  const termsNconditions({Key? key}) : super(key: key);

  @override
  State<termsNconditions> createState() => _termsNconditionsState();
}

class _termsNconditionsState extends State<termsNconditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      appBar: AppBar(
        title: Text('Terms and Conditions'),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: 20),
            Text('DISCLAIMER',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),textAlign: TextAlign.left
            ),
            SizedBox(height: 30),
            Text('1. The cleaning services provided by our company are subject to the terms and conditions stated in this application. '
                'By submitting a request for our services, you acknowledge that you have read and understood these terms and conditions.',
                style: TextStyle(fontSize: 15),textAlign: TextAlign.justify
            ),
            SizedBox(height: 20),
            Text('2. Our company shall not be held responsible for any damages, losses, or injuries that may occur as a result of the use of our services. '
                'We are not liable for any damages caused by our cleaning agents or equipment. We are also not liable for any damage caused by any other factor beyond our control.',
                style: TextStyle(fontSize: 15),textAlign: TextAlign.justify
            ),
            SizedBox(height: 20),
            Text('3. Our company reserves the right to refuse or terminate services at any time for any reason. '
                'We also reserve the right to modify or amend the terms and conditions of our services without prior notice.',
                style: TextStyle(fontSize: 15),textAlign: TextAlign.justify
            ),
            SizedBox(height: 20),
            Text('4. We do not guarantee the outcome of our cleaning services. While we strive to provide the best cleaning services possible, '
                'the results may vary based on various factors, including the condition of the premises, the type of materials used, and other factors beyond our control.',
                style: TextStyle(fontSize: 15),textAlign: TextAlign.justify
            ),
            SizedBox(height: 20),
            Text('5. Our company does not endorse or guarantee the quality of any third-party products or services that may be used in connection with our cleaning services.',
                style: TextStyle(fontSize: 15),textAlign: TextAlign.justify
            ),

          ],
        ),

      ),

    );
  }
}
