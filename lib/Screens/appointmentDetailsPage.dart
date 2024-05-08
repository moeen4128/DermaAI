import 'package:flutter/material.dart';

import 'form.dart';
class AppointmentDetailsPage extends StatefulWidget {
  final String name;
  final String about;
  final String image;
  final String specialtyType;
  final String address;
  final String phone;
  final String workingTime;
   AppointmentDetailsPage({Key? key, required this.name, required this.about, required this.image, required this.specialtyType, required this.address, required this.phone, required this.workingTime}) : super(key: key);

  @override
  State<AppointmentDetailsPage> createState() => _AppointmentDetailsPageState();
}

class _AppointmentDetailsPageState extends State<AppointmentDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF00557D),
        centerTitle: true,
        title: Text(
          "Doctor details",
          style: TextStyle(fontSize: 35, color: Colors.white),
        ),
        // leading: Icon(Icons.menu, size: 40, color: Colors.white),
        toolbarHeight: 80,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                              color: Colors.black, // Choose the color you prefer
                              width: 2, // Adjust the width of the border
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(37),
                            ),
                            child: Image(
                              height: 120,
                              width: 120,
                              fit: BoxFit.cover,
                              image: AssetImage(widget.image),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                widget.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                               widget.specialtyType,
                                style: TextStyle(fontSize: 18),
                              ),
                              Row(
                                children: [
                                  Text("Raiting",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.star,color: Colors.yellow,size: 21,),
                                  Icon(Icons.star,color: Colors.yellow,size: 21,),
                                  Icon(Icons.star,color: Colors.yellow,size: 21,),
                                  Icon(Icons.star,color: Colors.yellow,size: 21,),
                                  Icon(Icons.star,size: 21,color: Colors.grey,),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                height: 430,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.5,color: Colors.black),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("About :",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24
                          ),),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,right: 20),
                            child: Text(widget.about,style: TextStyle(
                              fontSize: 15,
                            ),),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                                Icon(Icons.location_on,size: 40,),
                              SizedBox(width: 10,),
                              Text("Address:",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25
                              ),)
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 80,right: 20),
                            child: Text(widget.address,style: TextStyle(
                              fontSize: 15,
                            ),),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(Icons.phone,size: 40,),
                              SizedBox(width: 10,),
                              Text("Phone:",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25
                              ),)
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 80,right: 20),
                            child: Text(widget.phone,style: TextStyle(
                              fontSize: 15,
                            ),),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(Icons.access_time_filled_outlined,size: 40,),
                              SizedBox(width: 10,),
                              Text("Working time:",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25
                              ),)
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 80,right: 20),
                            child: Row(
                              children: [
                                Text(widget.workingTime,style: TextStyle(
                                  fontSize: 15,
                                ),),
                              ],
                            )
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 200,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AppointmentForm(),));
                  },
                  child: Text(
                    'Get appointment',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0XFF00557D)),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                    ),
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
