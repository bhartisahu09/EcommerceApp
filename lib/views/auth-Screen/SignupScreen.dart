// // ignore_for_file: file_names

// import 'package:get/get.dart';
// import '../../Widget_Common/applogo_widget.dart';
// import '../../Widget_Common/bg_widget.dart';
// import '../../Widget_Common/custom_textWidget.dart';
// import '../../Widget_Common/our_button.dart';
// import '../../consts/consts.dart';

// class SignupScreen extends StatefulWidget {
//   const SignupScreen({super.key});

//   @override
//   State<SignupScreen> createState() => _SignupScreenState();
// }

// class _SignupScreenState extends State<SignupScreen> {
//   bool? isCheck = false;
//   @override
//   Widget build(BuildContext context) {
//     return bgWidget(
//         child: Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: Center(
//         child: Column(
//           children: [
//             (context.screenHeight * 0.1).heightBox,
//             appLogoWidget(),
//             10.heightBox,
//             "Join to $appname".text.fontFamily(bold).size(18).white.make(),
//             15.heightBox,
//             Column(
//               children: [
//                 customTextField(hint: namehint, title: name),
//                 customTextField(hint: emailHint, title: email),
//                 customTextField(hint: passwordHint, title: password),
//                 customTextField(hint: passwordHint, title: rePassword),
//                 Align(
//                     alignment: Alignment.centerRight,
//                     child: TextButton(
//                         onPressed: () {}, child: forgetPass.text.make())),
//                 5.heightBox,
//                 Row(
//                   children: [
//                     Checkbox(
//                         checkColor: redColor,
//                         value: isCheck,
//                         onChanged: (newValue) {
//                           setState(() {
//                             isCheck = newValue;
//                           });
//                         }),
//                     5.heightBox,
//                     RichText(
//                         text: const TextSpan(children: [
//                       TextSpan(
//                           text: "I agree to the ",
//                           style: TextStyle(
//                             fontFamily: regular,
//                             color: fontGrey,
//                           )),
//                       TextSpan(
//                           text: termCondi,
//                           style: TextStyle(
//                             fontFamily: regular,
//                             color: redColor,
//                           )),
//                       TextSpan(
//                           text: ' & ',
//                           style: TextStyle(
//                             fontFamily: regular,
//                             color: redColor,
//                           )),
//                       TextSpan(
//                           text: privecyPolicy,
//                           style: TextStyle(
//                             fontFamily: regular,
//                             color: redColor,
//                           )),
//                     ]))
//                   ],
//                 ),
//                 ourButton(
//                         color: isCheck == true ? redColor : lightGrey,
//                         titleText: signup,
//                         textColor: whiteColor,
//                         onPress: () {})
//                     .box
//                     .width(context.screenWidth - 50)
//                     .make(),
//                 10.heightBox,
//                 // ignore: prefer_const_constructors
//                 RichText(
//                     text: const TextSpan(children: [
//                   TextSpan(
//                     text: alreadyAccount,
//                     style: TextStyle(fontFamily: bold, color: fontGrey),
//                   ),
//                   TextSpan(
//                     text: signin,
//                     style: TextStyle(fontFamily: bold, color: redColor),
//                   ),
//                 ])).onTap(() {
//                   Get.back();
//                 })
//               ],
//             )
//                 .box
//                 .white
//                 .rounded
//                 .padding(const EdgeInsets.all(16))
//                 .width(context.screenWidth - 70)
//                 .shadowSm
//                 .make()
//           ],
//         ),
//       ),
//     ));
//   }
// }
