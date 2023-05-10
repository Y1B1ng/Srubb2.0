import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'selectionComm.dart';


class commercial extends StatefulWidget {
  const commercial({Key? key}) : super(key: key);

  @override
  State<commercial> createState() => _commercialState();
}

class _commercialState extends State<commercial> {

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
                  image: NetworkImage('https://ultracleaning.com.my/wp-content/uploads/2021/11/Office-Cleaning.jpg'),
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
        title: Text('Commercial Cleaning Service'),
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
                      Text('A commercial cleaning service involves cleaning and maintaining commercial spaces such as offices, retail stores, warehouses,'
                  'and other commercial buildings. This can include tasks such as dusting, vacuuming,'
                  'cleaning bathrooms and break rooms, and emptying trash.',style: TextStyle(fontSize: 15),textAlign: TextAlign.justify
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
                    MaterialPageRoute(builder: (context)=>selectionComm(initialTime: time),
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
