import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'payment.dart';


class Service {
  final String name;
  final double price;

  const Service({required this.name, required this.price});
}

class selection extends StatefulWidget {
  const selection({Key? key}) : super(key: key);

  @override
  State<selection> createState() => _selectionState();
}

class _selectionState extends State<selection> {

  DateTime _dateTime = DateTime.now();

  void _showDatePicker(){
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2023),
        lastDate: DateTime(2025),
    ).then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }

  void _selectTime(BuildContext context) async {
    final TimeOfDay initialTime = TimeOfDay.now();
    final TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: initialTime,
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 180.0,
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.time,
                  initialDateTime: DateTime(
                    DateTime.now().year,
                    DateTime.now().month,
                    DateTime.now().day,
                    initialTime.hour,
                    initialTime.minute,
                  ),
                  onDateTimeChanged: (DateTime newDateTime) {},
                  minuteInterval: 120,
                ),
              ),
            ],
          ),
        );
      },
    );

    if (selectedTime != null) {
      Text('Cancel');
    }
  }

  Service? _selectedService;

  final List<Service> _services = [
    Service(name: 'Housekeeping Service', price: 110.0),
    Service(name: 'Residential Cleaning Service', price: 120.0),
    Service(name: 'Post Renovation Cleaning Service', price: 150.0),
    Service(name: 'Commercial Cleaning Service', price: 120.0),
  ];

  double _getPrice(Service service) {
    switch (service.name) {
      case 'Housekeeping Service':
        return service.price;
      case 'Residential Cleaning Service':
        return service.price+10.0;
      case 'Post Renovation Cleaning Service':
        return service.price+40.0;
      case 'Commercial Cleaning Service':
        return service.price+10.0;
      default:
        return 0.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      appBar: AppBar(
        title: Text('Booking a service'),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //display chosen date
            Text(_dateTime.toString(), style: TextStyle(fontSize: 25)
            ),

            MaterialButton(
              onPressed: _showDatePicker,
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text('Choose a date', style: TextStyle(
                    color: Colors.lightBlueAccent, fontSize: 22)
                ),
              ),
              color: Colors.yellow[600],
            ),

            SizedBox(height: 25),

            //display chosen time
            Text(_selectTime.toString(), style: TextStyle(fontSize: 25)
            ),

            MaterialButton(
              onPressed: _showDatePicker, //time not date
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text('Choose a time slot', style: TextStyle(
                    color: Colors.lightBlueAccent, fontSize: 22)
                ),
              ),
              color: Colors.yellow[600],
            ),


            //location and address
            //location coding
           Column(
            children:[
              Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Name",
                  labelText: "Name",
                  labelStyle: TextStyle(fontSize: 24,color: Colors.black
                  ),
                  border: OutlineInputBorder(),
                  fillColor: Colors.grey[300],
                ),
                keyboardType: TextInputType.name,
                maxLines: 2,
              ),
            ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Phone Number",
                    labelText: "Phone Number",
                    labelStyle: TextStyle(fontSize: 24,color: Colors.black
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
                    labelStyle: TextStyle(fontSize: 24,color: Colors.black
                    ),
                    border: OutlineInputBorder(),
                    fillColor: Colors.grey[300],
                  ),
                  keyboardType: TextInputType.streetAddress,
                  maxLines: 4,
                ),
              ),

            ],
           ),

            //display total payment
            Column(
              children: [
              DropdownButton<Service>(
                value: _selectedService,
                items: _services
                    .map((service) => DropdownMenuItem(
                  value: service,
                  child: Text(service.name),
                ))
                    .toList(),
                onChanged: (service) {
                  setState(() {
                    _selectedService = service;
                  });
                },
              ),
              SizedBox(height: 16.0),
              Text(_selectedService != null
                  ? 'Price: \$${_getPrice(_selectedService!)}'
                  : 'Please select a service'),
            ],
            ),

            SizedBox(height: 16),

            //proceed to payment page and there is a button here

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
            ),
          ],
        ),
      ),

    );



  }
}

