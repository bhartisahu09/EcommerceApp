// import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:practice/provider/auth_provider.dart';
import 'package:practice/screen/login.dart';
import 'package:provider/provider.dart';

import 'const/colors.dart';
import 'consts/styles.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyBQiEQ_X4zSill2Ky83sqWcBMhMhIOxUac",
      authDomain: "login-flutter-504de.firebaseapp.com",
      projectId: "login-flutter-504de",
      storageBucket: "login-flutter-504de.appspot.com",
      messagingSenderId: "311618192994",
      appId: "1:311618192994:web:34ec5e057c56be9c58b33b",
      measurementId: "G-XS7P5YFY0L",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => AuthProvider())],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shopping',
        theme: ThemeData(
          //primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(color: darkFontGrey),
              elevation: 0.0,
              backgroundColor: Colors.transparent),
          fontFamily: regular,
        ),
        home: const LoginPage(),
        //LoginScreen(),
      ),
    );
  }
}
