import 'package:flutter/material.dart';
class RashDetailsPage extends StatelessWidget {
  final String title;
  final String about;
  final String image;
  final String symptoms;
  final String treatment;

  const RashDetailsPage({
    Key? key,
    required this.title,
    required this.about,
    required this.image,
    required this.symptoms,
    required this.treatment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var percentage = 97.2;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Derma AI",
          style: TextStyle(fontSize: 40, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                child: Image(
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 5), // Spacer between title and percentage
                  // Text(
                  //   "${percentage.toStringAsFixed(1)}%",
                  //   style: TextStyle(fontSize: 24),
                  // ),
                ],
              ),
              SizedBox(height: 10),
            Text("About :",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24
            ),),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 25),
                child: Text("$about",style: TextStyle(
                  fontSize: 15,
                ),),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Symptoms :",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24
              ),),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 25),
                child: Text("$symptoms"),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Treatments :",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24
              ),),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 25),
                child: Text("$treatment"),
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
}