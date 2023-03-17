import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timely/components/bottom_navigation.dart';
import 'package:timely/constants/menu_padding.dart';
import 'package:timely/controllers/auth_controller.dart';
import 'package:timely/controllers/profile_controller.dart';
import 'package:timely/utilities/route_paths.dart';
import 'package:timely/utilities/show_snackbar.dart';

import '../components/popup_menu_buttons.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final ProfileController profileController =
      Get.put<ProfileController>(ProfileController());
  String userName = '';
  String userEmail = '';

  @override
  void initState() {
    profileController.getBioData().then((bioData) {
      setState(() {
        userName = bioData['name'];
        userEmail = bioData['email'];
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Profile',
            style: TextStyle(
                color: Colors.black54,
                fontFamily: 'Satoshi',
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Row(children: [
            const MenuButton(
              popupColor: Colors.black,
            ),
            Container(
              width: menuPadding,
            )
          ]),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
      ),
      bottomNavigationBar: const BottomNavigation(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/images/thessC.png'),
                backgroundColor: Colors.transparent,
              ),
              Text(
                userName,
                style: const TextStyle(
                    fontFamily: 'Satoshi', fontSize: 16, color: Colors.black),
              ),
              Text(
                userEmail,
                style: const TextStyle(
                    fontFamily: 'Satoshi', fontSize: 16, color: Colors.black54),
              ),
              Container(
                width: double.infinity,
                height: 40,
                margin: const EdgeInsets.only(
                  right: 84,
                  left: 84,
                  top: 10,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(RoutePaths.editProfileScreen);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          10,
                        ),
                      ),
                    ),
                    maximumSize: const Size(double.infinity, 100),
                    backgroundColor: const Color(0XFF1C8E77),
                  ),
                  child: const Text(
                    'Edit Profile',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Satoshi',
                        fontSize: 14),
                  ),
                ),
              ),
              Container(height: 30),
              const Divider(
                color: Color(0xFF000000),
              ),
              Container(height: 15),
              ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                leading: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'svgs/Note.png',
                    height: 20,
                    width: 20,
                  ),
                ),
                onTap: () {
                  Get.toNamed(RoutePaths.notescreen);
                },
                title: const Text(
                  'Notes',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                leading: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'svgs/Rate.png',
                    height: 20,
                    width: 20,
                  ),
                ),
                title: const Text(
                  'Rate',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                leading: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'svgs/Share.png',
                    height: 20,
                    width: 20,
                  ),
                ),
                title: const Text(
                  'Share',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              TextButton(
                child: ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                  leading: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'svgs/Logout.png',
                      height: 20,
                      width: 20,
                    ),
                  ),
                  title: const Text(
                    'Logout',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                onPressed: () async {
                  AuthController().signOut().then((value) {
                    if (value) {
                      Get.toNamed(RoutePaths.login);
                      showSnackbar("Alert", "You've logged out");
                    } else {
                      showSnackbar("Alert", "Logout failed");
                    }
                  }).catchError((error) {
                    showSnackbar("Alert", "Logout failed");

                    if (kDebugMode) {
                      debugPrint(error);
                    }
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
