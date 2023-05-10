import 'package:flutter/material.dart';
import 'package:scrubb/bookingStatus.dart';
import 'package:scrubb/customerHotline.dart';
import 'package:scrubb/editProfile.dart';
import 'package:scrubb/privacyPolicy.dart';
import 'package:scrubb/termsNconditions.dart';
import 'login.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Color(0xffd6b738),
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 120,
                width: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image(image: AssetImage('')),
                ),
              ),
              SizedBox(height: 10),
              Text('Name'),
              SizedBox(height: 10),
              Text('Email'),
              SizedBox(height: 10),
              SizedBox(width: 150,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>editProfile(),
                      ),);
                  },
                  style: ElevatedButton.styleFrom(
                      shadowColor: Color(0xffd6b738), side: BorderSide.none, shape: StadiumBorder()),
                  child: Text('Edit Profile'),
                ),),
              SizedBox(height: 20),
              Divider(),
              SizedBox(height: 10),

              //list of button (profile page)

              profileMenu(title: "Booking Status",icon: Icons.fact_check, onPress: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>bookingStatus(),
                  ),);
              },),

              profileMenu(title: "Term and Conditions",icon: Icons.settings, onPress: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>termsNconditions(),
                  ),);
              },),

              profileMenu(title: "Privacy Policy",icon: Icons.privacy_tip, onPress: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>privacyPolicy(),
                  ),);
              },),

              profileMenu(title: "Customer Hotline",icon: Icons.support_agent, onPress: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>customerHotline(),
                  ),);
              },),

              profileMenu(title: "Log Out",icon: Icons.logout,textColor: Colors.red, onPress: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>login(),
                  ),);
              },),


            ],
          ),

        ),
      ),
    );
  }
}

class profileMenu extends StatelessWidget {
  const profileMenu({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        height: 30, width: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color(0xffd6b738),
        ),

      ),
      title: Text(title, style: Theme.of(context).textTheme.bodyText1?.apply(color: textColor)),
      trailing: endIcon? Container(
        height: 30, width: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.white,
        ),
        child: Icon(Icons.arrow_right,color: Colors.grey),
      ):null,

    );
  }
}
