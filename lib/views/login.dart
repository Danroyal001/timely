import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timely/controllers/auth_controller.dart';
import 'package:timely/controllers/loading_controller.dart';
import 'package:timely/utilities/route_paths.dart';
import 'package:timely/utilities/show_error_snackbar.dart';
import 'package:timely/utilities/show_snackbar.dart';
import 'package:timely/views/recover_password.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => LoginState();
}

class LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(8, 80, 8, 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(bottom: 25),
              child: const Center(
                child: Text(
                  "Log in and Let's get started",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
            ),
          ),
          // Container(
          //   width: double.infinity,
          //   height: 50,
          //   margin: const EdgeInsets.all(8.0),
          //   child: OutlinedButton(
          //     onPressed: () async {
          //       String userMessage = '';
          //       AuthController().signInwithGoogle().then((value) {
          //         if (value) {
          //           Get.offAndToNamed(RoutePaths.homeScreen);
          //           userMessage = "Login in successfully";
          //
          //           debugPrint("Value is true$userMessage");
          //         } else {
          //           Get.snackbar("Oops", "Could not login");
          //           debugPrint("Value is false");
          //         }
          //       }).catchError((error) {
          //         userMessage = "Login failed, Something went wrong";
          //         Get.snackbar("Oops", userMessage);
          //         debugPrint(userMessage);
          //
          //         if (kDebugMode) {
          //           debugPrint(error);
          //         }
          //       });
          //     },
          //     style: OutlinedButton.styleFrom(
          //         side: BorderSide(color: Colors.teal.shade200),
          //         shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(30))),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Container(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Image.asset(
          //             'svgs/google_icon.png',
          //             height: 20,
          //             width: 20,
          //           ),
          //         ),
          //         const Text(
          //           'Log in with Google',
          //           style: TextStyle(
          //             color: Colors.teal,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // Container(
          //   margin: const EdgeInsets.symmetric(horizontal: 16),
          //   child: Center(
          //     child: Row(
          //       children: const [
          //         Expanded(
          //           child: Divider(
          //             thickness: 0.5,
          //             color: Colors.black54,
          //           ),
          //         ),
          //         Text('  Or  '),
          //         Expanded(
          //           child: Divider(
          //             thickness: 0.5,
          //             color: Colors.black54,
          //           ),
          //         )
          //       ],
          //     ),
          //   ),
          // ),
          // Container(
          //   margin: const EdgeInsets.all(8.0),
          //   child: TextField(
          //     controller: _emailController,
          //     decoration: InputDecoration(
          //         hintText: "Email Addresss",
          //         hintStyle: const TextStyle(color: Colors.black54),
          //         border: OutlineInputBorder(
          //             borderRadius: BorderRadius.circular(30),
          //             borderSide: BorderSide(
          //                 color: Colors.teal.shade200,
          //                 width: 1.5,
          //                 style: BorderStyle.solid))),
          //   ),
          // ),
          // SizedBox(
          //   height: 20,
          // ),
          //       Container(
          //         padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          //         child: TextField(
          //           controller: _emailController,
          //           decoration: InputDecoration(
          //             labelText: "Email Address",
          //             // labelText: "Password",
          //             hintStyle: const TextStyle(color: Colors.black54),
          //             border: OutlineInputBorder(
          //                 borderRadius: BorderRadius.circular(30),
          //                 borderSide: BorderSide(
          //                     color: Colors.teal.shade200,
          //                     width: 1.5,
          //                     style: BorderStyle.solid)),
          //           ),
          // ),
          //       ),
          //       Container(
          //         padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          //         width: double.infinity,
          //         height: 50,
          //         margin: const EdgeInsets.all(8.0),
          //         child: OutlinedButton(
          //           onPressed: () async {
          //             String userMessage = '';
          //             AuthController().signInwithGoogle().then((value) {
          //               if (value) {
          //                 Get.offAndToNamed(RoutePaths.homeScreen);
          //                 userMessage = "Login in successfully";
          //
          //                 debugPrint("Value is true$userMessage");
          //               } else {
          //                 showSnackbar("Oops", "Could not login");
          //                 debugPrint("Value is false");
          //               }
          //             }).catchError((error) {
          //               userMessage = "Login failed, Something went wrong";
          //               showSnackbar("Oops", userMessage);
          //               debugPrint(userMessage);
          //
          //               if (kDebugMode) {
          //                 debugPrint(error);
          //               }
          //             });
          //           },
          //           style: OutlinedButton.styleFrom(
          //               side: BorderSide(color: Colors.teal.shade200),
          //               shape: RoundedRectangleBorder(
          //                   borderRadius: BorderRadius.circular(30))),
          //           child: Row(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             children: [
          //               Container(
          //                 padding: const EdgeInsets.all(8.0),
          //                 child: Image.asset(
          //                   'svgs/google_icon.png',
          //                   height: 20,
          //                   width: 20,
          //                 ),
          //               ),
          //               const Text(
          //                 'Log in with Google',
          //                 style: TextStyle(
          //                   color: Colors.teal,
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: Row(
                children: const [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.black54,
                    ),
                  ),
                  Text('  Or  '),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.black54,
                    ),
                  )
                ],
              ),
            ),
          ),
          // Container(
          //   padding: const EdgeInsets.all(10),
          //   child: TextFormField(
          //     controller: _emailController,
          //     decoration: const InputDecoration(
          //       border: OutlineInputBorder(),
          //       labelText: 'Email Address',
          //     ),
          //   ),
          // ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(30),
                    //     borderSide: BorderSide(
                    //         color: Colors.teal.shade200,
                    //         width: 1.5,
                    //         style: BorderStyle.solid)),
                    // helperStyle: TextStyle(
                    //   color: Colors.teal.shade200,
                    ),
                alignLabelWithHint: false,
                filled: true,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextFormField(
              obscureText: passwordVisible,
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: "Password",
                // labelText: "Password",
                helperText: "Password must contain special Characters",
                hintStyle: const TextStyle(color: Colors.black54),
                border: const OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(30),
                    //     borderSide: BorderSide(
                    //         color: Colors.teal.shade200,
                    //         width: 1.5,
                    //         style: BorderStyle.solid)),
                    // helperStyle: TextStyle(
                    //   color: Colors.teal.shade200,
                    ),
                suffixIcon: IconButton(
                  color: Colors.teal.shade200,
                  icon: Icon(passwordVisible
                      ? Icons.visibility
                      : Icons.visibility_off),
                  onPressed: () {
                    setState(
                      () {
                        passwordVisible = !passwordVisible;
                      },
                    );
                  },
                ),
                alignLabelWithHint: false,
                filled: true,
              ),
            ),
          ),

          // const Login(),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            child: Text(
              'Forgot Password?',
              style: TextStyle(
                fontFamily: 'Satoshi',
                fontSize: 14,
                color: Theme.of(context).primaryColor,
              ),
            ),
            onPressed: () {
              Get.toNamed(RoutePaths.resetPasswordViaEmail);
            },
          ),

          Container(
            width: double.infinity,
            height: 50,
            margin: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () async {
                LoadingControler().startLoading();

                var userMessage = "";

                AuthController()
                    .signInwithEmailAndPassword(
                        _emailController.value.text.trim(),
                        _passwordController.value.text.trim())
                    .then((value) {
                  if (value) {
                    LoadingControler().stopLoading();
                    Get.offAllNamed(RoutePaths.homeScreen);

                    userMessage = "Login in successfully";
                    debugPrint(userMessage);
                  } else {
                    LoadingControler().stopLoading();
                    showErrorSnackbar("Login failed, Something went wrong");
                  }
                }).onError((error, stackTrace) {
                  LoadingControler().stopLoading();

                  userMessage = "Login failed, $error";
                  showSnackbar("Oops", userMessage);
                  debugPrint(userMessage);
                });
/*                    .catchError((error) {
                  userMessage = "Login failed, Something went wrong";
                  showSnackbar("Oops", userMessage);
                  debugPrint(userMessage);

                  if (kDebugMode) {
                    debugPrint(error);
                  }
                });*/
              },
              style: OutlinedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      60,
                    ),
                  ),
                ),
                maximumSize: const Size(double.infinity, 100),
                backgroundColor: Colors.teal,
                side: const BorderSide(
                  color: Colors.teal,
                ),
              ),
              child: const Text(
                'Log In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Dont have an account?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.toNamed(RoutePaths.register);
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 15,
                        ),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
