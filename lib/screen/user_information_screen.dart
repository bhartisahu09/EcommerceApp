// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:practice/custom/cutom_button.dart';
// import 'package:practice/provider/auth_provider.dart';
// import 'package:practice/screen/home_screen.dart';
// import 'package:practice/utils/snakbar.dart';
// import 'package:provider/provider.dart';

// import '../model/user_model.dart';

// class UserInfromationScreen extends StatefulWidget {
//   const UserInfromationScreen({super.key});

//   @override
//   State<UserInfromationScreen> createState() => _UserInfromationScreenState();
// }

// class _UserInfromationScreenState extends State<UserInfromationScreen> {
//   File? _image;
//   final nameController = TextEditingController();
//   final emailController = TextEditingController();
//   final bioController = TextEditingController();

//   @override
//   void dispose() {
//     super.dispose();
//     nameController.dispose();
//     emailController.dispose();
//     bioController.dispose();
//   }

//   //for selecting image
//   void selectImage() async {
//     _image = await pickImage(context);
//     print(_image);
//     setState(() {
//       _image = _image;
//     });
//   }
//   // ignore: unused_element
//   // Future _pickImage(ImageSource source) async {
//   //   try {
//   //     final image = await ImagePicker().pickImage(source: source);
//   //     if (image == null) return;
//   //     File? img = File(image.path);
//   //     setState(() {
//   //       _image = img;
//   //       Navigator.of(context).pop();
//   //     });
//   //   } on PlatformException catch (e) {
//   //     print(e);
//   //     Navigator.of(context).pop();
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     final isLoading =
//         Provider.of<AuthProvider>(context, listen: true).isLoading;
//     return Scaffold(
//       body: SafeArea(
//         child: isLoading == true
//             ? const Center(
//                 child: CircularProgressIndicator(
//                   color: Colors.purple,
//                 ),
//               )
//             : SingleChildScrollView(
//                 padding:
//                     const EdgeInsets.symmetric(vertical: 25.0, horizontal: 5.0),
//                 child: Center(
//                   child: Column(
//                     children: [
//                       InkWell(
//                         onTap: () => {
//                           selectImage(),
//                         }, //selectImage(),
//                         child: _image == null
//                             ? const CircleAvatar(
//                                 backgroundColor: Colors.purple,
//                                 radius: 50,
//                                 child: Icon(
//                                   Icons.account_circle,
//                                   size: 50,
//                                   color: Colors.white,
//                                 ),
//                               )
//                             : CircleAvatar(
//                                 backgroundImage: FileImage(_image!),
//                                 radius: 50,
//                               ),
//                       ),
//                       Container(
//                         width: MediaQuery.of(context).size.width,
//                         padding: const EdgeInsets.symmetric(
//                             vertical: 5, horizontal: 15),
//                         margin: const EdgeInsets.only(top: 20),
//                         child: Column(
//                           children: [
//                             // name field
//                             textFeld(
//                               hintText: "John Smith",
//                               icon: Icons.account_circle,
//                               inputType: TextInputType.name,
//                               maxLines: 1,
//                               controller: nameController,
//                             ),

//                             // email
//                             textFeld(
//                               hintText: "abc@example.com",
//                               icon: Icons.email,
//                               inputType: TextInputType.emailAddress,
//                               maxLines: 1,
//                               controller: emailController,
//                             ),

//                             // bio
//                             textFeld(
//                               hintText: "Enter your bio here...",
//                               icon: Icons.edit,
//                               inputType: TextInputType.name,
//                               maxLines: 2,
//                               controller: bioController,
//                             ),
//                           ],
//                         ),
//                       ),
//                       const SizedBox(height: 20),
//                       SizedBox(
//                         height: 50,
//                         width: MediaQuery.of(context).size.width * 0.90,
//                         child: CustomButton(
//                             text: "Continue",
//                             onTap: () => {
//                                   storeData(),
//                                 }),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//       ),
//     );
//   }

//   Widget textFeld({
//     required String hintText,
//     required IconData icon,
//     required TextInputType inputType,
//     required int maxLines,
//     required TextEditingController controller,
//   }) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 10),
//       child: TextFormField(
//         cursorColor: Colors.purple,
//         controller: controller,
//         keyboardType: inputType,
//         maxLines: maxLines,
//         decoration: InputDecoration(
//           prefixIcon: Container(
//             margin: const EdgeInsets.all(8.0),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(8),
//               color: Colors.purple,
//             ),
//             child: Icon(
//               icon,
//               size: 20,
//               color: Colors.white,
//             ),
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10),
//             borderSide: const BorderSide(
//               color: Colors.transparent,
//             ),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10),
//             borderSide: const BorderSide(
//               color: Colors.transparent,
//             ),
//           ),
//           hintText: hintText,
//           alignLabelWithHint: true,
//           border: InputBorder.none,
//           fillColor: Colors.purple.shade50,
//           filled: true,
//         ),
//       ),
//     );
//   }

//   // store user data to database
//   void storeData() async {
//     final ap = Provider.of<AuthProvider>(context, listen: false);
//     UserModel userModel = UserModel(
//       name: nameController.text.trim(),
//       email: emailController.text.trim(),
//       bio: bioController.text.trim(),
//       profilePic: "",
//       createdAt: "",
//       phoneNumber: "",
//       uid: "",
//     );
//     print("image ");
//     if (_image != null) {
//       ap.saveUserDataToFirebase(
//         context: context,
//         userModel: userModel,
//         profilePic: _image!,
//         onSuccess: () {
//           print("image ");
//           ap.saveUserDataToSP().then(
//                 (value) => ap.setSignIn().then(
//                       (value) => Navigator.pushAndRemoveUntil(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => const HomeScreen(),
//                           ),
//                           (route) => false),
//                     ),
//               );
//         },
//       );
//     } else {
//       showSnackBar(context, "Please upload your profile photo");
//     }
//   }
// }
