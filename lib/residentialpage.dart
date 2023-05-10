import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scrubb/selectionResid.dart';
import 'selectionResid.dart';


class residentialpage extends StatefulWidget {
  const residentialpage({Key? key}) : super(key: key);

  @override
  State<residentialpage> createState() => _residentialpageState();
}

class _residentialpageState extends State<residentialpage> {

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
                  image: NetworkImage('https://insights.workwave.com/wp-content/uploads/2020/05/cleaning-with-spray-detergent-rubber-gloves-and-dish-cloth-on-work-picture-id1202033073.jpg'),
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
        title: Text('Residential Cleaning Service'),
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
                      Text('A residential cleaning service involves cleaning and tidying '
                          'up a private home or apartment. This can include tasks such '
                          'as vacuuming, dusting, mopping, cleaning bathrooms and kitchens, '
                          'and organizing spaces.',style: TextStyle(fontSize: 15),textAlign: TextAlign.justify
                      ),
                      SizedBox(height: 40),
                      Text('RM120 / 2 hours',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,)
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
                    MaterialPageRoute(builder: (context)=>selectionResid(initialTime:time),
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
