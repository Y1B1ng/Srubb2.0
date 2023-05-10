
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scrubb/main.dart';
import 'home.dart';
import 'signup.dart';
import 'main.dart';


class login extends StatefulWidget{

  @override
  _login createState()=> _login();
}



class _login extends State<login>{

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

  Widget buildForgotPassBtn(){
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
          onPressed: ()=> print("Forgot Password Pressed"),
      padding: EdgeInsets.only(right:0),
      child: Text(
        'Forgot Password?',
        style: TextStyle(
            color:Colors.white,
            fontWeight: FontWeight.bold
        ),
      ),
    ),
    );
  }

  Widget buildLoginBtn(){
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
            child: Text('LOG IN', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>bottomBarNavi(),
                ),);
            }
        ),

      ),
      );
  }



  @override
  Widget build(BuildContext context){
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
                    vertical: 80
                  ),
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
                        'Log In',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 38,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height:50),
                      buildEmail(),
                      SizedBox(height:20),
                      buildPassword(),
                      buildForgotPassBtn(),
                      buildLoginBtn(),
                      AlreadyHaveAnAccount(
                        press:(){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context)=>signup(),
                            ),
                          );
                        },
                      ),
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