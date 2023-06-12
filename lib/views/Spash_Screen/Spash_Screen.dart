// // ignore:
// // ignore:
// // ignore_for_file: unused_import, file_names
// // ignore: unnecessary_import
// import 'package:ecommerce/consts/colors.dart';
// import 'package:ecommerce/consts/consts.dart';

// // ignore: unnecessary_import, implementation_imports
// import 'package:flutter/src/widgets/framework.dart';
// // ignore: implementation_imports
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_navigation/src/extension_navigation.dart';

// import '../../Widget_Common/applogo_widget.dart';
// import '../auth-Screen/Login_Screen.dart';
// import '../cetegory_screen/catagory_screen.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   changeScreen() {
//     Future.delayed(const Duration(seconds: 3), () {
//       Get.to(() => const LoginScreen());
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     changeScreen();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: redColor,
//       body: Center(
//         child: Column(
//           children: [
//             Align(
//               alignment: Alignment.topLeft,
//               child: Image.asset(
//                 icSplashBg,
//                 width: 300,
//               ),
//             ),
//             20.heightBox,
//             appLogoWidget(),
//             10.heightBox,
//             appname.text.fontFamily(bold).size(20).white.make(),
//             5.heightBox,
//             appversion.text.white.make(),
//             const Spacer(),
//             credits.text.white.fontFamily(semibold).make(),
//             30.heightBox
//           ],
//         ),
//       ),
//     );
//   }
// }
