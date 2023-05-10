import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login.dart';
import 'signup_controller.dart';
import 'package:get/get.dart';

class signup extends StatefulWidget{

  @override
  _signup createState()=> _signup();
}



class _signup extends State<signup>{
  final controller = Get.put(signup_controller());
  final _formKey= GlobalKey<FormState>();

  Widget buildUsername(){

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Username',
          style:TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height:10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height:60,
          child: TextField(

            keyboardType: TextInputType.text,
            style: TextStyle(
                color: Colors.black87
            ),
            controller: controller.userName,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top:14),
              prefixIcon: Icon(
                  Icons.account_box,
                  color: Color(0xffffd451)
              ),
              hintText: 'Username',
              hintStyle: TextStyle(
                  color:Colors.black38
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget buildEmail(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style:TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height:10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height:60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
                color: Colors.black87
            ),
            controller: controller.email,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top:14),
              prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xffffd451)
              ),
              hintText: 'Email',
              hintStyle: TextStyle(
                  color:Colors.black38
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget buildPassword(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style:TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height:10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height:60,
          child: TextField(
            obscureText: true,
            style: TextStyle(
                color: Colors.black87
            ),
            controller: controller.password,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top:14),
              prefixIcon: Icon(
                  Icons.lock,
                  color: Color(0xffffd451)
              ),
              hintText: 'Password',
              hintStyle: TextStyle(
                  color:Colors.black38
              ),
            ),
          ),
        )
      ],
    );

  }

  Widget buildSignupBtn(){
    return Container(
      padding: EdgeInsets.symmetric(vertical:25),
      width: double.infinity,
      child: SizedBox(

        width: 100,
        height: 50,

        child: ElevatedButton(

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
          child: Text('SIGN UP', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
          onPressed: (){
            if(_formKey.currentState!.validate()){
              signup_controller.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());
            }
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>login(),
            ),);
          }
        ),

      ),

    );
  }


  @override
  Widget build(BuildContext context){
    final controller = Get.put(signup_controller());
    final _formKey= GlobalKey<FormState>();
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[

              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.orangeAccent,
                          Color(0xffffd451),
                          Color(0xffffd451),
                          Color(0xffffd451),
                        ]
                    )
                ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 55,
                  ),
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'SCRUBB',
                        style: TextStyle(
                            color: Color(0xff540d6e),
                            fontSize: 48,
                            fontWeight: FontWeight.bold
                        ),
                      ),

                      Text(
                        'Home Cleaning Services',
                        style: TextStyle(
                            color: Color(0xff540d6e),
                            fontSize: 22,
                            fontWeight: FontWeight.normal
                        ),
                      ),
                      SizedBox(height:30),

                      Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 38,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height:30),
                      buildUsername(),
                      SizedBox(height:20),
                      buildEmail(),
                      SizedBox(height:20),
                      buildPassword(),
                      SizedBox(height:20),
                      buildSignupBtn(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}