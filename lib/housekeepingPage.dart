import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'selectionHousek.dart';


class housekeepingPage extends StatefulWidget {
  const housekeepingPage({Key? key}) : super(key: key);

  @override
  State<housekeepingPage> createState() => _housekeepingPageState();
}

class _housekeepingPageState extends State<housekeepingPage> {

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
                  image: NetworkImage('https://www.eveshousecleaning.com/wp-content/uploads/2020/10/professional-house-cleaning-services-las-vegas-nv.jpg'),
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
        title: Text('Housekeeping Service'),
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
                      Text('Housekeeping services involve the general maintenance and '
                          'upkeep of a home, including cleaning, organizing, laundry, and'
                          'other household tasks. This can include things like cleaning bathrooms '
                          'and kitchens, making beds, dusting, vacuuming, and laundry.',style: TextStyle(fontSize: 15),textAlign: TextAlign.justify
                      ),
                      SizedBox(height: 40),
                      Text('RM110 / 2 hours',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,)
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
                    MaterialPageRoute(builder: (context)=>selectionHousek(initialTime:time),
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
