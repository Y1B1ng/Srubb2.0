import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class location extends StatefulWidget {
  const location({Key? key}) : super(key: key);

  @override
  State<location> createState() => _locationState();
}

class _locationState extends State<location> {
  
  final Completer<GoogleMapController> _controller = Completer();
  
  static const CameraPosition _kGooglePlex =CameraPosition(target: LatLng(3.1390, 101.6869),
  zoom: 14,);

  final List<Marker> _markers = <Marker> [
    Marker(markerId: MarkerId('1'),
      position: LatLng(3.1390, 101.6869),
      infoWindow: InfoWindow(
        title: '',
      ),
    ),
  ];

  loadData(){
    getCurrentLocation().then((value)async {
      print("my current location");
      print(value.latitude.toString()+""+value.longitude.toString());

      _markers.add(
          Marker(
              markerId: MarkerId('2'),
              position: LatLng(value.latitude, value.longitude),
              infoWindow: InfoWindow(
                  title: 'My current location'
              )
          )
      );

      CameraPosition cameraPosition = CameraPosition(zoom:14, target: LatLng(value.latitude, value.longitude));

      final GoogleMapController controller = await _controller.future;
      controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
      setState(() {

      });

    });
  }

  Future<Position> getCurrentLocation() async {
    await Geolocator.requestPermission().then((value){

    }).onError((error, stackTrace){
      print("error"+error.toString());
    });
    return await Geolocator.getCurrentPosition();
  }

  @override
  void initState(){
    super.initState();
    loadData();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: _kGooglePlex,
        markers: Set<Marker>.of(_markers),
        onMapCreated: (GoogleMapController controller){
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()async{

        },

        child: Icon(Icons.local_activity),
      ),

    );
  }
}



