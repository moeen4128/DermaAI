import 'package:flutter/material.dart';
import 'package:heal_wiz_application/Screens/profile.dart';
import 'package:heal_wiz_application/Screens/response.dart';

import 'RashDetailsPage.dart';
import 'appointments.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'homePage.dart';
import 'login.dart';
class Rashes extends StatefulWidget {
   Rashes({Key? key,}) : super(key: key);

  @override
  State<Rashes> createState() => _RashesState();
}

class _RashesState extends State<Rashes> {
  final List<RashesListClass> rashes = [
    RashesListClass(
      title: 'Eczeme',
      description: "Eczema is a condition that causes your skin to become dry, itchy and bumpy. This condition weakens your skin's barrier function, which is responsible for helping your skin retain moisture and protecting your body from outside elements. Eczema is a type of dermatitis.",
      image: 'assets/IconsHomePage/eczeme.jpeg',
      symptoms:"Eczema, or atopic dermatitis, is characterized by intense itching, dry and rough skin, redness, and a rash. These symptoms can vary in severity and may worsen during flare-ups triggered by allergens or irritants. Managing eczema involves skincare routines, avoiding triggers, and sometimes medical treatments to alleviate symptoms and reduce inflammation.",
      treatment: "Treatment for eczema typically involves a combination of skincare practices, lifestyle adjustments, and medications. This may include moisturizing regularly, avoiding irritants and allergens, using prescribed topical corticosteroids or immunomodulators, and, in severe cases, oral medications or phototherapy. Consulting a dermatologist is essential for personalized treatment plans tailored to individual needs.",
    ),
    RashesListClass(
      title: 'Vitiligo',
      description: "Vitiligo is a chronic (long-lasting) autoimmune disorder that causes patches of skin to lose pigment or color. This happens when melanocytes – skin cells that make pigment – are attacked and destroyed, causing the skin to turn a milky-white color.",
      image: 'assets/IconsHomePage/vitiligo.jpeg',
      treatment: "Treatment for vitiligo aims to restore skin color and prevent further depigmentation. Options include topical corticosteroids, calcineurin inhibitors, and phototherapy, which may help repigment the affected areas. In more severe cases, oral medications or surgical procedures such as skin grafting or melanocyte transplantation may be recommended. However, treatment effectiveness can vary, and it's essential to consult a dermatologist for personalized treatment plans tailored to individual needs.",
      symptoms: "Vitiligo is characterized by the loss of skin color, resulting in patches of depigmented skin. These patches can appear on any part of the body and may vary in size and shape. Vitiligo patches often start as small, pale spots that gradually enlarge over time. The condition can affect the hair and mucous membranes as well, causing premature graying of hair and depigmentation of the tissues inside the mouth and nose.",
    ),
    RashesListClass(
      title: 'Keratosis',
      description: "Keratosis is a harmless skin condition that causes dry, rough patches and tiny bumps, often on the upper arms, thighs, cheeks or buttocks. The bumps usually don't hurt or itch. Keratosis pilaris is often considered a common variant of skin",
      image: 'assets/IconsHomePage/Keratosis_Pilaris_on_Back.jpg',
      symptoms: "Keratosis is characterized by the development of small, rough bumps on the skin's surface. These bumps may be flesh-colored, red, or brown, and they often feel dry and rough to the touch. Keratosis commonly appears on areas of the body exposed to sun, such as the face, arms, hands, and legs. The condition is typically benign but can cause cosmetic concerns or discomfort due to itching or irritation.",
      treatment: "Treatment for keratosis aims to improve skin appearance and texture while reducing symptoms like itching or irritation. Options include topical medications with retinoids, alpha hydroxy acids, or salicylic acid to exfoliate and soften bumps. Procedures like cryotherapy, chemical peels, or laser therapy may remove or reduce keratosis lesions. Consistent sunscreen and protective clothing use can prevent new lesions. Consulting a dermatologist ensures proper diagnosis and personalized treatment.",
    ),
    RashesListClass(
      title: 'Psoriasis',
      description: "Psoriasis is a chronic (long-lasting) disease in which the immune system becomes overactive, causing skin cells to multiply too quickly. Patches of skin become scaly and inflamed, most often on the scalp, elbows, or knees, but other parts of the body can be affected as well.",
      image: 'assets/IconsHomePage/psoriasis.jpeg',
      treatment: "Treatment for psoriasis includes topical corticosteroids, vitamin D analogs, and retinoids applied directly to the skin. Phototherapy exposes the skin to ultraviolet light to slow skin cell growth. In severe cases, oral medications or biologic drugs targeting the immune system may be prescribed. It's crucial to consult a dermatologist for a personalized treatment plan",
      symptoms: "Psoriasis is characterized by red, inflamed patches of skin covered with silvery scales. These patches can appear anywhere on the body but are commonly found on the scalp, elbows, knees, and lower back. Psoriasis patches may be itchy, painful, or tender, and they can crack and bleed. In severe cases, psoriasis can also affect the nails, causing them to become thickened, pitted, or ridged.",
    ),
    RashesListClass(
        title: 'Acne',
        description: "Acne is a common skin condition that happens when hair follicles under the skin become clogged. Sebum—oil that helps keep skin from drying out—and dead skin cells plug the pores, which leads to outbreaks of lesions, commonly called pimples or zits.",
        image: 'assets/IconsHomePage/acne.jpeg',
        symptoms: "Acne typically manifests as various types of skin lesions, including blackheads, whiteheads, papules, pustules, nodules, and cysts. These lesions often appear on the face, neck, chest, back, and shoulders. Acne may also cause inflammation, redness, and tenderness around the affected areas. In some cases, acne can lead to scarring if not properly treated.",
        treatment: "Treatment for acne aims to reduce inflammation, unclog pores, and prevent new lesions from forming. This may involve topical treatments such as benzoyl peroxide, salicylic acid, retinoids, or antibiotics to target bacteria and reduce oil production. Oral medications like oral antibiotics, hormonal treatments, or isotretinoin may be prescribed for moderate to severe acne. Additionally, lifestyle changes, proper skincare, and regular dermatologist visits are essential for managing acne effectively."
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Rashes",
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView.builder(
          itemCount: rashes.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RashDetailsPage(
                      title: rashes[index].title,
                      about: rashes[index].description,
                      image: rashes[index].image,
                      symptoms: rashes[index].symptoms,
                      treatment: rashes[index].treatment,
                    ),
                  ),
                );
              },
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  border: Border.all(width: 1, color: Colors.grey),
                ),
                margin: EdgeInsets.only(bottom: 20),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        child: Image(
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                          image: AssetImage(rashes[index].image),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              rashes[index].title,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                rashes[index].description.length <= 80
                                    ? rashes[index].description
                                    : rashes[index].description.substring(0, 80) +
                                    "...",
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
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
}

class RashesListClass {
  final String title;
  final String description;
  final String image;
  final String symptoms;
  final String treatment;

  RashesListClass({
    required this.title,
    required this.description,
    required this.image,
    required this.symptoms,
    required this.treatment,
  });
}
