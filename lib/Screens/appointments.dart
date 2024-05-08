import 'package:flutter/material.dart';
import 'package:heal_wiz_application/Screens/profile.dart';
import 'package:heal_wiz_application/Screens/response.dart';
import 'Rashes.dart';
import 'appointmentDetailsPage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'homePage.dart';
import 'login.dart';
class Appointments extends StatefulWidget {
   Appointments({Key? key,}) : super(key: key);

  @override
  State<Appointments> createState() => _AppointmentsState();
}
class _AppointmentsState extends State<Appointments> {
  final TextEditingController _searchController = TextEditingController();
  late List<AppointmentListClass> filteredAppointments;
  late List<AppointmentListClass> allAppointments;
  @override
  void initState() {
    super.initState();
    allAppointments = [
      AppointmentListClass(
        name: 'Dr. Rabia Ishfaq',
        specialtyType: "Dermatologist",
        image: 'assets/Icons/eczeme.jpeg',
        about:
        "MBBS, Diploma in Gastroenterology (UK), Diploma in Diabetes (UK), Member European Society of Gastroenterology.",
        address: "Block # E1, House # 80, Wapda Town Extension, Lahore",
        phone: "+92342-4434366",
        workingTime: "03:00 PM - 04:00 PM",
      ),
      AppointmentListClass(
        name: 'Dr. Sadaf Yamin',
        specialtyType: "Dermatologist",
        image: 'assets/Icons/eczeme.jpeg',
        about:
        "MBBS, Diploma in Gastroenterology (UK), Diploma in Diabetes (UK), Member European Society of Gastroenterology.",
        address: "Block # E1, House # 80, Wapda Town Extension, Lahore",
        phone: "+92342-4434366",
        workingTime: "03:00 PM - 04:00 PM",
      ),
      AppointmentListClass(
        name: 'Dr. Umar Mushtaq',
        specialtyType: "Dermatologist",
        image: 'assets/Icons/eczeme.jpeg',
        about:
        "MBBS, Diploma in Gastroenterology (UK), Diploma in Diabetes (UK), Member European Society of Gastroenterology.",
        address: "Block # E1, House # 80, Wapda Town Extension, Lahore",
        phone: "+92342-4434366",
        workingTime: "03:00 PM - 04:00 PM",
      ),
      AppointmentListClass(
        name: 'Dr. M Amjad',
        specialtyType: "Dermatologist",
        image: 'assets/Icons/eczeme.jpeg',
        about:
        "MBBS, Diploma in Gastroenterology (UK), Diploma in Diabetes (UK), Member European Society of Gastroenterology.",
        address: "Block # E1, House # 80, Wapda Town Extension, Lahore",
        phone: "+92342-4434366",
        workingTime: "03:00 PM - 04:00 PM",
      ),
      AppointmentListClass(
        name: 'Dr. Asma',
        specialtyType: "Dermatologist",
        image: 'assets/Icons/eczeme.jpeg',
        about:
        "MBBS, Diploma in Gastroenterology (UK), Diploma in Diabetes (UK), Member European Society of Gastroenterology.",
        address: "Block # E1, House # 80, Wapda Town Extension, Lahore",
        phone: "+92342-4434366",
        workingTime: "03:00 PM - 04:00 PM",
      ),
      AppointmentListClass(
        name: 'Dr. Usman Javed',
        specialtyType: "Dermatologist",
        image: 'assets/Icons/eczeme.jpeg',
        about:
        "MBBS, Diploma in Gastroenterology (UK), Diploma in Diabetes (UK), Member European Society of Gastroenterology.",
        address: "Block # E1, House # 80, Wapda Town Extension, Lahore",
        phone: "+92342-4434366",
        workingTime: "03:00 PM - 04:00 PM",
      ),
    ];
    filteredAppointments = allAppointments;
  }
  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
  void filterAppointments(String query) {
    setState(() {
      if (query.isNotEmpty) {
        filteredAppointments = allAppointments
            .where((appointment) =>
            appointment.name.toLowerCase().contains(query.toLowerCase()))
            .toList();
      } else {
        filteredAppointments = allAppointments;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
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
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // Ensure children expand horizontally
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  cursorColor: Colors.black,
                  controller: _searchController,
                  onChanged: filterAppointments,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search Doctor by name',
                    hintStyle: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.7),
                    ),
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: filteredAppointments.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 30.0,
                    crossAxisSpacing: 20.0,
                    childAspectRatio: 0.7),
                itemBuilder: (context, index) {
                  return buildAppointmentCard(filteredAppointments[index]);

                },
              ),
              SizedBox(
                height: 50,
              )
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
  Widget buildAppointmentCard(AppointmentListClass appointment) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AppointmentDetailsPage(
              image: appointment.image,
              name: appointment.name,
              about: appointment.about,
              address: appointment.address,
              phone: appointment.phone,
              specialtyType: appointment.specialtyType,
              workingTime: appointment.workingTime,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          border: Border.all(color: Colors.black, width: 2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30), bottom: Radius.circular(30)),
              child: Image(
                width: double.infinity,
                height: 150,
                fit: BoxFit.cover,
                image: AssetImage(appointment.image),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                appointment.name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 4),
            Center(
              child: Text(
                appointment.specialtyType,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppointmentListClass {
  final String name;
  final String specialtyType;
  final String image;
  final String about;
  final String address;
  final String phone;
  final String workingTime;

  AppointmentListClass({
    required this.name,
    required this.specialtyType,
    required this.image,
    required this.about,
    required this.address,
    required this.phone,
    required this.workingTime,
  });
}
