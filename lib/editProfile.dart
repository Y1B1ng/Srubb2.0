import 'package:flutter/material.dart';
import 'profile.dart';

class editProfile extends StatefulWidget{
 const editProfile({Key? key}) : super(key: key);

  @override
  State<editProfile> createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      appBar: AppBar(
        //leading: back to profile page
        title: Text('Edit Profile'),
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 120,
                    width: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image(image: AssetImage('')),
                    ),
                  ),
                  Positioned(
                    bottom: 0, right: 0,
                    child: Container(
                      width: 35, height: 35,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)
                      ),
                      child: Icon(Icons.camera,color: Colors.black,size: 20),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),

              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text('Name'), prefixIcon: Icon(Icons.person)),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                          label: Text('Email'), prefixIcon: Icon(Icons.email)),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                          label: Text('Phone Number'), prefixIcon: Icon(Icons.call)),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                          label: Text('Password'), prefixIcon: Icon(Icons.password)),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                            shadowColor: Color(0xffd6b738), side: BorderSide.none, shape: StadiumBorder()),
                        child: Text('Save Changes'),
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),


            ],
          ),

        ),
      ),



    );
  }

}
