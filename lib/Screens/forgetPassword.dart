
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ForgetPassowrd extends StatelessWidget {
  const ForgetPassowrd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController forgetController = TextEditingController();
    final RxBool validateforgetEmail = false.obs;
    reset (String email) async{
      try{
        await FirebaseAuth.instance.sendPasswordResetEmail(email:email );
        Get.snackbar("ReSet", "Check your email");
      }
      catch (e){
        Get.snackbar("error", e.toString());
      }
    }
    return Scaffold(

      body: Padding(
        padding:  EdgeInsets.only(
            left: Get.width * 0.05, right: Get.width * 0.05
        ),
        child: Column(
          children: [
            SizedBox(
              height: Get.height*0.1,
            ),
        TextFormField(
          controller: forgetController,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'Forgot password',
            prefixIcon: const Icon(Icons.email),
            errorText: validateforgetEmail.value?  'Please enter a valid email':null,
            errorMaxLines: 1,
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: Colors.red),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: Colors.red),
            ),
            labelText: 'Enter Email',
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: Colors.red),
            ),
            // alignLabelWithHint: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 18.0),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: Colors.black),
              gapPadding: 10.0,
            ),
          ),
          validator: (value) {
            if (value!.isEmpty || !validateforgetEmail(value as bool?)) {
              validateforgetEmail.value = true;
              return 'Please enter a valid email';
            }
            return null;
          },
        ),
            SizedBox(
              height: Get.height*0.04,
            ),
            SizedBox(
              width: double.infinity,
              height: Get.height*0.06,
              child: ElevatedButton(
                onPressed: () {
                  if(forgetController.text.isEmpty){
                    validateforgetEmail.value = true;
                    return null;
                  }
                  else {
                    // Proceed with other actions, such as registering the user
                    reset(forgetController.text);
                  }
                },
                child: Text('Reset',style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),
                style: ButtonStyle(
                  backgroundColor:  MaterialStateProperty.all<Color>(Colors.blue),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
