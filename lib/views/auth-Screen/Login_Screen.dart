// // ignore_for_file: file_names

// import 'package:get/get.dart';

// import '../../Widget_Common/applogo_widget.dart';
// import '../../Widget_Common/bg_widget.dart';
// import '../../Widget_Common/custom_textWidget.dart';
// import '../../Widget_Common/our_button.dart';
// import '../../consts/consts.dart';
// import '../../consts/lists.dart';
// import '../home_screen/home.dart';

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({super.key});

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
//             "Login to $appname".text.fontFamily(bold).size(18).white.make(),
//             15.heightBox,
//             Column(
//               children: [
//                 customTextField(hint: emailHint, title: email),
//                 customTextField(hint: passwordHint, title: password),
//                 Align(
//                     alignment: Alignment.centerRight,
//                     child: TextButton(
//                         onPressed: () {}, child: forgetPass.text.make())),
//                 5.heightBox,
//                 // ourButton().box.width(context.screenWidth - 50).make()
//                 ourButton(
//                     color: redColor,
//                     titleText: signin,
//                     textColor: whiteColor,
//                     onPress: () {
//                       Get.to(() => const Home());
//                     }).box.width(context.screenWidth - 50).make(),
//                 5.heightBox,
//                 createNewAccount.text.color(fontGrey).make(),
//                 5.heightBox,
//                 ourButton(
//                     color: lightGolden,
//                     titleText: signup,
//                     textColor: redColor,
//                     onPress: () {
//                       Get.to(() => const SignupScreen());
//                     }).box.width(context.screenWidth - 50).make(),
//                 10.heightBox,
//                 loginwith.text.color(fontGrey).make(),
//                 5.heightBox,
//                 Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: List.generate(
//                         3,
//                         (index) => Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: CircleAvatar(
//                                 backgroundColor: lightGrey,
//                                 radius: 25,
//                                 child: Image.asset(
//                                   socialIconsList[index],
//                                   width: 30,
//                                 ),
//                               ),
//                             )))
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
