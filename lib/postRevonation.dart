import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'selectionPReno.dart';


class postRenovation extends StatefulWidget {
  const postRenovation({Key? key}) : super(key: key);

  @override
  State<postRenovation> createState() => _postRenovationState();
}

class _postRenovationState extends State<postRenovation> {

  Widget pictureOne(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: Column(
        children: [
          Container(
            height: 200, width: 360,
            decoration: BoxDecoration(
                image:DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://www.matteobianchi.co.uk/wp-content/uploads/2022/01/construction-post-construction-cleaning-markham.jpeg'),
                ),
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(10)
            ),
          ),
        ],
      ),
    );
  }

  TimeOfDay time = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      appBar: AppBar(
        title: Text('Post Renovation Cleaning Service'),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 100),

            pictureOne(),
            SizedBox(height: 5),
            Column(
              children:[
                Container(
                  padding: EdgeInsets.all(16.0), // Add padding around the container
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent), // Add border around the container
                    borderRadius: BorderRadius.circular(8.0), // Add rounded corners to the container
                  ),
                  child: Column(
                    children:[
                      Text('Post renovation cleaning service typically involves a thorough cleaning of '
                    'a property after it has undergone renovation or construction work. The service'
                      'may include removing debris, dust, and other construction-related materials from'
                        ' the property, as well as cleaning surfaces, fixtures, and appliances to remove any'
                        ' remaining dirt or dust.',style: TextStyle(fontSize: 15),textAlign: TextAlign.justify
                    ),
                      SizedBox(height: 40),
                      Text('RM150 / 2 hours',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,)
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
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
                child: Text('Book service', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>selectionPReno(initialTime:time),
                    ),);
                }
            ),
            SizedBox(height: 50),

          ],
        ),
      ),

    );
  }
}
