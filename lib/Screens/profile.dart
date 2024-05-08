import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:heal_wiz_application/Screens/response.dart';
import 'Rashes.dart';
import 'appointments.dart';
import 'homePage.dart';
import 'login.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // late UserData _userData;
  // bool _isLoading = true;
  String _userName = ''; // Variable to hold user's first name
  final TextEditingController _controllerBio = TextEditingController();

  @override
  void initState() {
    super.initState();
    // _loadUserData();
  }

  Future<void> _loadUserData() async {
    // Get the current user from Firebase Authentication
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      try {
        // Get the user document from Firestore
        DocumentSnapshot<Map<String, dynamic>> snapshot =
            await FirebaseFirestore.instance
                .collection('Users')
                .doc(user.uid)
                .get();

        // Check if the widget is still mounted before updating the state
        if (mounted) {
          // Get the user's name field from the document
          setState(() {
            _userName = snapshot['name'];
          });
        }
      } catch (e) {
        print('Error loading user data: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF43A1D4),
        title: Text(
          'Profile',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 28, color: Colors.white),
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
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200.0, // Adjust width as needed
                height: 200.0, // Adjust height as needed
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/3.png'),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                _userName.isNotEmpty ? '$_userName!' : 'Haroon Khan',
                // 'Mahesh Bora',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Software Developer',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black38,
                ),
              ),
              SizedBox(height: 30.0),
              TextFormField(
                controller: _controllerBio,
                decoration: InputDecoration(
                  hintText: 'Enter a Quote Here...',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide:
                        BorderSide(color: Colors.red), // Custom border color
                  ),
                ),
                maxLines: 3,
              ),
              SizedBox(height: 30.0),
              ElevatedButton(
                onPressed:() =>logout ,
                child: Text('Sign Out'),
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
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => SignInScreen()));
  }
}
