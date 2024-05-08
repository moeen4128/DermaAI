import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:heal_wiz_application/Screens/Rashes.dart';
import 'package:heal_wiz_application/Screens/appointments.dart';
import 'package:heal_wiz_application/Screens/profile.dart';
import 'package:heal_wiz_application/Screens/response.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'login.dart';
class HomePage extends StatefulWidget {

  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    User? user = FirebaseAuth.instance.currentUser;
    String? name= user?.email;
    List<String> parts = name!.split("@");
    String displayName = parts[0] != null
        ? (parts[0].length <= 10 ? parts[0] : parts[0].substring(0, 10) + "...")
        : "";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Derma AI",
          style: TextStyle(fontSize: 40, color: Colors.white),
        ),
        leading: PopupMenuButton(
          icon: Icon(Icons.menu, size: 40, color: Colors.white),
          itemBuilder: (BuildContext context) => [
            PopupMenuItem(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0XFF00557D),
                  border: Border.all(color: Colors.grey), // Set border color
                  borderRadius: BorderRadius.circular(10), // Set border radius
                ),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                // Add padding for spacing
                child: Text("Home",style: TextStyle(color: Colors.white),),
              ),
              value: "home",
            ),
            PopupMenuItem(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0XFF00557D),
                  border: Border.all(color: Colors.grey), // Set border color
                  borderRadius: BorderRadius.circular(10), // Set border radius
                ),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                // Add padding for spacing
                child: Text("New Scan",style: TextStyle(color: Colors.white),),
              ),
              value: "newScan",
            ),
            PopupMenuItem(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0XFF00557D),
                  border: Border.all(color: Colors.grey), // Set border color
                  borderRadius: BorderRadius.circular(10), // Set border radius
                ),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                // Add padding for spacing
                child: Text("Your Scan",style: TextStyle(color: Colors.white),),
              ),
              value: "yourScan",
            ),
            PopupMenuItem(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0XFF00557D),
                  border: Border.all(color: Colors.grey), // Set border color
                  borderRadius: BorderRadius.circular(10), // Set border radius
                ),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                // Add padding for spacing
                child: Text("Rashes",style: TextStyle(color: Colors.white),),
              ),
              value: "rashes",
            ),
            PopupMenuItem(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0XFF00557D),
                  border: Border.all(color: Colors.grey), // Set border color
                  borderRadius: BorderRadius.circular(10), // Set border radius
                ),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                // Add padding for spacing
                child: Text("Appointment",style: TextStyle(color: Colors.white),),
              ),
              value: "appointment",
            ),
            PopupMenuItem(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0XFF00557D),
                  border: Border.all(color: Colors.grey), // Set border color
                  borderRadius: BorderRadius.circular(10), // Set border radius
                ),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                // Add padding for spacing
                child: Text("Profile",style: TextStyle(color: Colors.white),),
              ),
              value: "profile",
            ),
            PopupMenuItem(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0XFF00557D),
                  border: Border.all(color: Colors.grey), // Set border color
                  borderRadius: BorderRadius.circular(10), // Set border radius
                ),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                // Add padding for spacing
                child: Text("Logout",style: TextStyle(color: Colors.white),),
              ),
              value: "logout",
            ),
          ],
          onSelected: (value) {
            // Handle menu item selection here
            switch (value) {
              case "home":
              // Handle profile button click
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                break;
              case "newScan":
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResponseData()),
                );
                break;
              case "yourScan":
              // Handle button 2 click
                break;
              case "rashes":
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Rashes()),
                );
                break;
              case "appointment":
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Appointments()),
                );
                break;
              case "profile":
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
                break;
              case "logout":
                logout();
                break;
            }
          },
        ),
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height - kToolbarHeight,
          ),
          child: Stack(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0XFF43A1D4),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello $displayName",
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "How can we",
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Help you?",
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: width * 0.45,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60.0),
                      topRight: Radius.circular(60.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: height * 0.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              bottom: BorderSide(color: Colors.grey, width: 2)),
                          borderRadius: BorderRadius.all(Radius.circular(60)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: width * 0.074,
                              top: width * 0.075,
                              right: width * 0.074),
                          child: GridView.builder(
                            shrinkWrap: true,
                            // Adjusts the size of the grid to its content
                            physics: NeverScrollableScrollPhysics(),
                            // Disables scrolling
                            itemCount: 4,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: width * 0.05,
                                crossAxisSpacing: width * 0.05,
                                childAspectRatio: 0.94),
                            itemBuilder: (context, index) {
                              switch (index) {
                                case 0:
                                  return _buildGridItem(
                                      context,
                                      "New Scan",
                                      "Identify your trash",
                                      AssetImage(
                                          'assets/IconsHomePage/zoom_175391.png'));
                                case 1:
                                  return _buildGridItem(
                                      context,
                                      "Your Scans",
                                      "View past scans",
                                      AssetImage(
                                          'assets/IconsHomePage/qr-code_4867479.png'));
                                case 2:
                                  return _buildGridItem(
                                      context,
                                      "Rashes",
                                      "Learn about rashes",
                                      AssetImage(
                                          'assets/IconsHomePage/heart_290535.png'));
                                case 3:
                                  return _buildGridItem(
                                      context,
                                      "Appointments",
                                      "Get appointment with docotr",
                                      AssetImage(
                                          'assets/IconsHomePage/schedule_2669764.png'));
                                default:
                                  return Container();
                              }
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        margin: EdgeInsets.only(
                            left: width * 0.05,
                            right: width * 0.05,),
                        height: height * 0.127,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey, width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(width * 0.04),
                          child: Row(
                            children: [
                              SizedBox(
                                child: CircularPercentIndicator(
                                  radius: 35.0,
                                  // animation: true,
                                  // animationDuration: 1200,
                                  lineWidth: 5.0,
                                  percent: 0.4,
                                  center: Container(
                                    margin: EdgeInsets.all(width * 0.02),
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey, width: 3),
                                        borderRadius: BorderRadius.circular(50)),
                                    child: Center(
                                      child: Text(
                                        "2",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ),
                                  circularStrokeCap: CircularStrokeCap.butt,
                                  backgroundColor: Colors.blue,
                                  progressColor: Colors.red,
                                ),
                              ),
                              SizedBox(
                                width: width * 0.05,
                              ),
                              Padding(
                                padding: EdgeInsets.all(width * 0.01),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Container(
                                            height: height * 0.019,
                                            width: width * 0.04,
                                            decoration: BoxDecoration(
                                                color: Color(0XFFABB5D5),
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                          ),
                                          SizedBox(
                                            width: width * 0.024,
                                          ),
                                          Text(
                                            "Photos uploaded",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0XFF88878E)),
                                          ),
                                          SizedBox(
                                            width: width * 0.1,
                                          ),
                                          Text(
                                            "       2",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0XFF454B54)),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Row(
                                        children: [
                                          Container(
                                            height: height * 0.019,
                                            width: width * 0.04,
                                            decoration: BoxDecoration(
                                                color: Colors.blue,
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                          ),
                                          SizedBox(
                                            width: width * 0.024,
                                          ),
                                          Text(
                                            "Without Problems",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0XFF88878E)),
                                          ),
                                          SizedBox(
                                            width: width * 0.1,
                                          ),
                                          Text(
                                            "     1",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0XFF454B54)),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Container(
                                            height: height * 0.019,
                                            width: width * 0.04,
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                          ),
                                          SizedBox(
                                            width: width * 0.024,
                                          ),
                                          Text(
                                            "Diagnosed Problems",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0XFF88878E)),
                                          ),
                                          SizedBox(
                                            width: width * 0.1,
                                          ),
                                          Text(
                                            "1",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0XFF454B54)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  logout() async {
  // Functionality to sign out
  await GoogleSignIn().signOut();
  await FirebaseAuth.instance.signOut();
  Navigator.pushReplacement(context,
  MaterialPageRoute(builder: (context) => SignInScreen()));
}
  Widget _buildGridItem(
      BuildContext context, String title, String subTitle, AssetImage image) {
    return GestureDetector(
      onTap: () {
        switch (title) {
          case "New Scan":
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ResponseData()),
            );
            break;
          case "Your Scans":
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ResponseData()),
            );
            break;
          case "Rashes":
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Rashes()),
            );
            break;
          case "Appointments":
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Appointments()),
            );
            break;
        }
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
          color: Colors.blue,
        ),
        child: Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.sizeOf(context).width * 0.035,
              top: MediaQuery.sizeOf(context).height * 0.025,
              bottom: MediaQuery.sizeOf(context).height * 0.02,
              right: MediaQuery.sizeOf(context).width * 0.035),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: image,
                width: 70,
                height: 70,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.01,
              ),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.01,
              ),
              Text(
                subTitle,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
