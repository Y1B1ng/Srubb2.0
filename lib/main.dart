import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:scrubb/firebase_options.dart';
import 'authentication_repository.dart';
import 'login.dart';
import 'signup.dart';
import 'home.dart';
import 'services.dart';
import 'notification.dart';
import 'profile.dart';
import 'package:get/get.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform).then((value)=> Get.put(authentication_repository()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scrubb App',
      theme: ThemeData(

        primarySwatch: Colors.orange,

      ),
      debugShowCheckedModeBanner: false,
      home: login(),

     // routes: {
     //   '/HomePage': (context) => home(),
     //   '/SignUpPage': (context) => signup(),
     //   '/ServicePage': (context) => services(),
     //   '/NotificationPage': (context) => notification(),
     //   '/ProfilePage': (context) => profile(),
     // },

    );
  }
}



class bottomBarNavi extends StatefulWidget {
  const bottomBarNavi ({Key? key}) : super(key: key);

  @override
  State<bottomBarNavi> createState() => _bottomBarNaviState();
}

class _bottomBarNaviState extends State<bottomBarNavi> {
  int pageIndex = 0;
 // static const TextStyle optionStyle=
 //    TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget>_widgetOptions=<Widget>[
    home(),
    services(),
    notification(),
    profile(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  //final pages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: _widgetOptions[pageIndex],
      bottomNavigationBar: BottomNavigationBar(

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Color(0xfff6d42a)),
            label: 'Home',
          ),

          BottomNavigationBarItem(icon: Icon(Icons.cleaning_services,color: Color(0xfff6d42a)),
            label: 'Service',
          ),

          BottomNavigationBarItem(icon: Icon(Icons.all_inbox,color: Color(0xfff6d42a)),
            label: 'Notification',
          ),

          BottomNavigationBarItem(icon: Icon(Icons.person,color: Color(0xfff6d42a)),
            label: 'Profile',
          ),

        ],
        currentIndex: pageIndex,
        selectedItemColor: Colors.blueAccent,
        onTap: _onItemTapped,

      ),
    );
  }

}

class AlreadyHaveAnAccount extends StatelessWidget {
  final bool login;
  final Function? press;
  const AlreadyHaveAnAccount (
  {
    Key?key,
    this.login = true,
    required this.press,
}) : super (key:key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't have an account?" : "Already have account?",
          style: const TextStyle(color: Colors.black38),
        ),
    GestureDetector(
    onTap: press as void Function()?,
    child: Text(
    login? "Sign Up Now" : "Log in now",
      style: const TextStyle(color: Colors.black38, fontWeight: FontWeight.bold),
    ),
    )
    ],
    );
  }


}













