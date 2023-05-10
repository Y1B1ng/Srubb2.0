import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scrubb/housekeepingPage.dart';
import 'residentialpage.dart';
import 'housekeepingPage.dart';
import 'postRevonation.dart';
import 'commercial.dart';

class services extends StatefulWidget {
  const services({Key? key}) : super(key: key);

  @override
  State<services> createState() => _servicesState();
}

class _servicesState extends State<services> {

  Widget residentialCleaning(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: Column(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                image:DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://nextdaycleaning.com/wp-content/uploads/2020/06/Main-Benefits-of-Residential-Cleaning-Services-1024x663.jpg'),
                ),
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(10)
            ),
          ),
        ],
      ),
    );

  }

  Widget pRenovationCleaning(){
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: Column(
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                  image:DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('https://www.fantasticcleaners.com.my/wp-content/uploads/2020/11/post-renovation-cleaning-1.jpg'),
                  ),
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(10)
              ),
            ),
          ],
        ),
      );
  }

  Widget commercialCleaning(){
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: Column(
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                  image:DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('https://greatcommercialcleaners.com/wp-content/uploads/2021/07/commercial-cleaning-services-brampton.jpg'),
                  ),
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(10)
              ),
            ),
          ],
        ),
      );
  }

  Widget housekeepingService(){
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: Column(
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                  image:DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('https://qtxasset.com/quartz/qcloud1/media/image/hotelmanagement/1602777056/GettyImages-862708922.jpg/GettyImages-862708922.jpg?VersionId=M7CfjsFQYKcE_3h4Nc7vscgI7I2k28QP'),
                  ),
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(10)
              ),
            ),
          ],
        ),
      );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      appBar: AppBar(
        title: Text('Services Available'),
        backgroundColor: Color(0xffd6b738),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 25),

            residentialCleaning(),
            SizedBox(height: 5),
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
                child: Text('Residential Cleaning Service', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>residentialpage(),
                    ),);
                }
            ),
            SizedBox(height: 60),

            pRenovationCleaning(),
            SizedBox(height: 5),
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
                child: Text('Post Renovation Cleaning Service', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>postRenovation(),
                    ),);
                }
            ),
            SizedBox(height: 60),

            commercialCleaning(),
            SizedBox(height: 5),
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
                child: Text('Commercial Cleaning Service', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>commercial(),
                    ),);
                }
            ),
            SizedBox(height: 60),

            housekeepingService(),
            SizedBox(height: 5),
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
                child: Text('Housekeeping Service', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>housekeepingPage(),
                    ),);
                }
            ),
            SizedBox(height: 60),

          ],
        ),
      ),


    );
  }


}
