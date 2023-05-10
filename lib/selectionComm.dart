import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'payment.dart';
import 'timeSlot.dart';


class selectionComm extends StatefulWidget {
  final TimeOfDay initialTime;
  final void Function(TimeOfDay)? onTimeChanged;
  const selectionComm({Key? key,required this.initialTime,
    this.onTimeChanged,
  }) : super(key: key);

  @override
  State<selectionComm> createState() => _selectionCommState();
}

class _selectionCommState extends State<selectionComm> {

  DateTime date = DateTime.now();


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      appBar: AppBar(
        title: Text('Booking a service'),
      ),

      body: Container(
        height: 760,
        child:SingleChildScrollView(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 15),

              //display service chosen and the price

              Container(
                height:120,
                width:380,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 12),
                    Text('You have chosen:', textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal)
                    ),
                    Text('Housekeeping Service', textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                    ),
                    SizedBox(height: 12),
                    Text('Price:', textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal)
                    ),
                    Text('RM 110', textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),


              //display chosen date *********************************

              Text('Date of your cleaning service:',textAlign: TextAlign.left, style: TextStyle(fontSize: 15),
              ),
              Text('${date.day}/${date.month}/${date.year}', textAlign: TextAlign.left, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              ElevatedButton(
                child: Text('Select Date'),
                onPressed: () async {
                  DateTime? newDate = await showDatePicker(
                    context: context,
                    initialDate: date,
                    firstDate: DateTime(2023),
                    lastDate: DateTime(2025),
                  );

                  if(newDate == null) return;
                  setState(() => date = newDate
                  );
                },
              ),
              SizedBox(height: 25),

              //display chosen time *************************************
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
                  child: Text('Choose time slot', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>timeSlot(),
                      ),);
                  }
              ),




              //location coding(need to find)

              //Client details (name, phone no, address) ********************************
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children:[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Name",
                        labelText: "Name",
                        labelStyle: TextStyle(fontSize: 16,color: Colors.black
                        ),
                        border: OutlineInputBorder(),
                        fillColor: Colors.grey[300],
                      ),
                      keyboardType: TextInputType.name,
                      maxLines: 1,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Phone Number",
                        labelText: "Phone Number",
                        labelStyle: TextStyle(fontSize: 16,color: Colors.black
                        ),
                        border: OutlineInputBorder(),
                        fillColor: Colors.grey[300],
                      ),
                      keyboardType: TextInputType.phone,
                      maxLines: 1,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Address",
                        labelText: "Address",
                        labelStyle: TextStyle(fontSize: 16,color: Colors.black
                        ),
                        border: OutlineInputBorder(),
                        fillColor: Colors.grey[300],
                      ),
                      keyboardType: TextInputType.streetAddress,
                      maxLines: 3,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Special Note to Worker",
                        labelText: "Special Note to Worker",
                        labelStyle: TextStyle(fontSize: 16,color: Colors.black
                        ),
                        border: OutlineInputBorder(),
                        fillColor: Colors.grey[300],
                      ),
                      keyboardType: TextInputType.text,
                      maxLines: 3,
                    ),
                  ),



                  SizedBox(height: 12),

                  //proceed to payment page and there is a button here ********************************

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
                      child: Text('Proceed to payment', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>payment(),
                          ),);
                      }
                  ),],),

            ],
          ),
        ),),



    );

  }
}

