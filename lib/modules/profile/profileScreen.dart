import 'package:flutter/material.dart';
import 'dart:io';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String userName = "Ahamed Abdelfattah"; // Initial name, you can replace it with user data
  String userImage = "images/doctor4.jpg"; // Initial image, you can replace it with user data

  // Function to update user profile
  void _updateProfile(String newName, String newImage) {
    setState(() {
      userName = newName;
      userImage = newImage;
    });
  }

  // Function to show a dialog for updating the profile
  Future<void> _showProfileUpdateDialog() async {
    String newName = userName;
    XFile? pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      String newImage = pickedFile.path;

      return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Update Profile'),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: 'New Name'),
                    onChanged: (value) {
                      newName = value;
                    },
                  ),
                  SizedBox(height: 20),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: FileImage(File(newImage)),
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: Text('Update'),
                onPressed: () {
                  _updateProfile(newName, newImage);
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 226, 215),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Center(
              child: Stack(
                children: [
                  SizedBox(
                    height: 50.0,
                  ),
                  Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      border: Border.all(width: 4, color: Colors.white),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.1),
                        )
                      ],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(userImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {
                        // Show a dialog or navigate to a screen to allow the user to update the profile
                        _showProfileUpdateDialog().then((value) {
                          // Add any additional logic after updating the profile
                        });
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1, color: Colors.white),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage("assets/icons/camra.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  userName,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.0900,
                    width: MediaQuery.of(context).size.width * 0.2500,
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.0400,
                          width: MediaQuery.of(context).size.width * 0.1500,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/icons/callories.png"),
                              filterQuality: FilterQuality.high,
                            ),
                          ),
                        ),
                        Text(
                          "Calories",
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 245, 243, 243),
                          ),
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        Text(
                          "103lbs",
                          style: GoogleFonts.poppins(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 1,
                    color: Colors.white,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.0900,
                    width: MediaQuery.of(context).size.width * 0.2500,
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.0400,
                          width: MediaQuery.of(context).size.width * 0.1500,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/icons/weight.png"),
                              filterQuality: FilterQuality.high,
                            ),
                          ),
                        ),
                        Text(
                          "Weight",
                          style: GoogleFonts.poppins(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 245, 243, 243),
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          "756cal",
                          style: GoogleFonts.poppins(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 1,
                    color: Colors.white,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.0900,
                    width: MediaQuery.of(context).size.width * 0.2500,
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.0400,
                          width: MediaQuery.of(context).size.width * 0.1500,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/icons/heart1.png"),
                              filterQuality: FilterQuality.high,
                            ),
                          ),
                        ),
                        Text(
                          "Heart rate",
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 245, 243, 243),
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          "215bpm",
                          style: GoogleFonts.poppins(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 550,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  ListTile(
                    leading: Image.asset("assets/icons/heart2.png"),
                    title: Text(
                      "My Saved",
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    child: Divider(),
                  ),
                  ListTile(
                    leading: Image.asset("assets/icons/appoint.png"),
                    title: Text(
                      "Appointment",
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    child: Divider(),
                  ),
                  ListTile(
                    leading: Image.asset("assets/icons/Chat.png"),
                    title: Text(
                      "FAQs",
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    child: Divider(),
                  ),
                  ListTile(
                    leading: Image.asset("assets/icons/pay.png"),
                    title: Text(
                      "Payment Method",
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    child: Divider(),
                  ),
                  ListTile(
                    leading: Image.asset("assets/icons/logout.png"),
                    title: Text(
                      "Log out",
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
