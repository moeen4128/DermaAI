import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'homePage.dart';

class AppointmentForm extends StatefulWidget {
  @override
  _AppointmentFormState createState() => _AppointmentFormState();
}

class _AppointmentFormState extends State<AppointmentForm> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailAddressController = TextEditingController();
  TextEditingController conditionController = TextEditingController();
  TextEditingController lookingForController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController conditionDetailsController = TextEditingController();

  String? selectedCondition = 'Dummy Condition';
  String? selectedLookingFor = 'Dummy Looking For';

  bool previouslyAttended = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Form",
          style: TextStyle(fontSize: 40, color: Colors.white),
        ),
        leading: Icon(Icons.menu, size: 40, color: Colors.white),
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(color: Color(0XFFF5E4B9)),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    "Appointment form",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      'Name:',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "*",
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: firstNameController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'First',
                          filled: true,
                          // errorText: validateforgetEmail.value?  'Please enter a valid email':null,
                          errorMaxLines: 1,
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          // alignLabelWithHint: true,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 18.0),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(color: Colors.black),
                            gapPadding: 10.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: TextFormField(
                        controller: lastNameController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Last',
                          filled: true,
                          // errorText: validateforgetEmail.value?  'Please enter a valid email':null,
                          errorMaxLines: 1,
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          // alignLabelWithHint: true,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 18.0),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(color: Colors.black),
                            gapPadding: 10.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Text(
                      'Phone number:',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "*",
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    )
                  ],
                ),
                TextFormField(
                  controller: phoneNumberController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Phone number',
                    filled: true,
                    // errorText: validateforgetEmail.value?  'Please enter a valid email':null,
                    errorMaxLines: 1,
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    // alignLabelWithHint: true,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 18.0),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.black),
                      gapPadding: 10.0,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Text(
                      'Email Address:',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "*",
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    )
                  ],
                ),
                TextFormField(
                  controller: emailAddressController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Email Address',
                    filled: true,
                    // errorText: validateforgetEmail.value?  'Please enter a valid email':null,
                    errorMaxLines: 1,
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    // alignLabelWithHint: true,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 18.0),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.black),
                      gapPadding: 10.0,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Text(
                      'What condition do you have?',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "*",
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    )
                  ],
                ),
                TextFormField(
                  controller: conditionController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Please select',
                    filled: true,
                    errorMaxLines: 1,
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 18.0),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black),
                      gapPadding: 10.0,
                    ),
                    suffixIcon: PopupMenuButton<String>(
                      icon: Icon(Icons.arrow_drop_down),
                      onSelected: (String value) {
                        setState(() {
                          conditionController.text = value;
                        });
                      },
                      itemBuilder: (BuildContext context) =>
                          <PopupMenuEntry<String>>[
                        PopupMenuItem<String>(
                          value: 'Option 1',
                          child: Text('Option 1'),
                        ),
                        PopupMenuItem<String>(
                          value: 'Option 2',
                          child: Text('Option 2'),
                        ),
                        PopupMenuItem<String>(
                          value: 'Option 3',
                          child: Text('Option 3'),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Text(
                      'What are you looking for?',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "*",
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    )
                  ],
                ),
                TextFormField(
                  controller: lookingForController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Please select',
                    filled: true,
                    errorMaxLines: 1,
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 18.0),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black),
                      gapPadding: 10.0,
                    ),
                    suffixIcon: PopupMenuButton<String>(
                      icon: Icon(Icons.arrow_drop_down),
                      onSelected: (String value) {
                        setState(() {
                          lookingForController.text = value;
                        });
                      },
                      itemBuilder: (BuildContext context) =>
                          <PopupMenuEntry<String>>[
                        PopupMenuItem<String>(
                          value: 'Service 1',
                          child: Text('Service 1'),
                        ),
                        PopupMenuItem<String>(
                          value: 'Service 2',
                          child: Text('Service 2'),
                        ),
                        PopupMenuItem<String>(
                          value: 'Service 3',
                          child: Text('Service 3'),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Text(
                      'Please select a date:',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "*",
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    )
                  ],
                ),
                TextFormField(
                  onTap: () async {
                    DateTime? picked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2024),
                      lastDate: DateTime(2025),
                    );
                    if (picked != null) {
                      setState(() {
                        // Format the picked date
                        dateController.text = DateFormat('d/M/yyyy').format(picked);
                      });
                    }
                  },
                  controller: dateController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: 'MM/DD/YYYY',
                      filled: true,
                      errorMaxLines: 1,
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 18.0),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black),
                        gapPadding: 10.0,
                      ),
                      suffixIcon: Icon(Icons.calendar_month)),
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Text(
                      'Please select a time:',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "*",
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    )
                  ],
                ),
                TextFormField(
                  onTap: () async {
                    TimeOfDay? picked = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                    );
                    if (picked != null)
                      setState(() {
                        timeController.text = picked.format(context);
                      });
                  },
                  controller: timeController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                        hintText: 'HH/MM/PM',
                      filled: true,
                      errorMaxLines: 1,
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 18.0),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black),
                        gapPadding: 10.0,
                      ),
                      suffixIcon: Icon(Icons.access_time_filled_outlined)),
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Text(
                      'Have you previously attended our facility?',
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "*",
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    )
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: true,
                      groupValue: previouslyAttended,
                      onChanged: (value) {
                        setState(() {
                          previouslyAttended = value as bool;
                        });
                      },
                    ),
                    Text('Yes'),
                    Radio(
                      value: false,
                      groupValue: previouslyAttended,
                      onChanged: (value) {
                        setState(() {
                          previouslyAttended = value as bool;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                if (previouslyAttended)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('If yes, state on which condition and when?',style:
                      TextStyle(fontSize: 18, ),),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: conditionDetailsController,
                        decoration: InputDecoration(
                          hintText: 'Type here',
                          alignLabelWithHint: true, // Align the hint text with the top-left corner
                          filled: true,
                          errorMaxLines: 1,
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 40.0), // Increase vertical padding
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black),
                            gapPadding: 10.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                SizedBox(height: 20.0),
                Center(
                  child: SizedBox(
                    width: 200,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                      },
                      child: Text(
                        'Submit',
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
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
