import 'package:country_picker/country_picker.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:practice/custom/cutom_button.dart';
import 'package:practice/provider/auth_provider.dart';
import 'package:practice/screen/need_help.dart';
import 'package:practice/screen/privacy_policy.dart';
import 'package:practice/screen/skip.dart';
import 'package:practice/screen/term_and_condition.dart';
import 'package:practice/services/auth_services.dart';
// ignore: unused_import
import 'package:provider/provider.dart';

import '../utils/country_code.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController phoneController = TextEditingController();
  final countryPicker = const FlCountryCodePicker();

  CountryCode? countryCode;
  // Country selectedCountry = Country(
  //     phoneCode: "91",
  //     countryCode: "IN",
  //     e164Sc: 0,
  //     geographic: true,
  //     level: 1,
  //     name: "India",
  //     example: "India",
  //     displayName: "India",
  //     displayNameNoCountryCode: "IN",
  //     e164Key: "");
  @override
  Widget build(BuildContext context) {
    phoneController.selection = TextSelection.fromPosition(
      TextPosition(
        offset: phoneController.text.length,
      ),
    );
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.only(right: 20),
            child: Align(
              // padding: const EdgeInsetsDirectional.fromSTEB(410, 30, 0, 0),
              alignment: Alignment.topRight,

              child: ElevatedButton(
                onPressed: () {
                  // Get.to(() => const SkipScreen());
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SkipScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: const BorderSide(width: 1.0, color: Colors.grey)),
                child: const Text(
                  'Skip',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
            child: Text(
              'Login or Create account',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Color(0xFF101113),
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 8, 0, 25),
            child: Text(
              'Your mobile number will be used only for authentication.',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Color(0xFF292A2B),
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: TextFormField(
          //     cursorColor: Colors.purple,
          //     controller: phoneController,
          //     style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          //     onChanged: (value) {
          //       setState(() {
          //         phoneController.text = value;
          //       });
          //     },
          //     decoration: InputDecoration(
          //       hintText: "Enter Phone Number",
          //       hintStyle: const TextStyle(
          //           fontWeight: FontWeight.w500,
          //           fontSize: 15,
          //           color: Colors.grey),
          //       enabledBorder: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(10),
          //         borderSide: const BorderSide(color: Colors.black12),
          //       ),
          //       focusedBorder: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(10),
          //         borderSide: const BorderSide(color: Colors.black12),
          //       ),
          //       prefixIcon: Container(
          //         padding: const EdgeInsets.all(8.0),
          //         child: InkWell(
          //           onTap: () {
          //             showCountryPicker(
          //               context: context,
          //               countryListTheme: const CountryListThemeData(
          //                 bottomSheetHeight: 500,
          //               ),
          //               onSelect: (value) {
          //                 setState(() {
          //                   selectedCountry = value;
          //                 });
          //               },
          //             );
          //           },
          //           child: Text(
          //             "${selectedCountry.flagEmoji} + ${selectedCountry.phoneCode}",
          //             style: const TextStyle(
          //               fontSize: 16,
          //               fontWeight: FontWeight.bold,
          //               color: Colors.black,
          //             ),
          //           ),
          //         ),
          //       ),
          //       suffixIcon: phoneController.text.length > 9
          //           ? Container(
          //               height: 30,
          //               width: 30,
          //               margin: const EdgeInsets.all(10.0),
          //               decoration: const BoxDecoration(
          //                   shape: BoxShape.circle, color: Colors.green),
          //               child: const Icon(
          //                 Icons.done,
          //                 color: Colors.white,
          //                 size: 20,
          //               ),
          //             )
          //           : null,
          //     ),
          //   ),
          // ),
          Stack(children: [
            Container(
              height: 41,
              width: 370,
              margin: const EdgeInsets.only(
                  top: 13, bottom: 0, left: 140, right: 2),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 0.5)),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextFormField(
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                controller: phoneController,
                maxLines: 1,
                //maxLength: 15,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    // enabledBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    //   borderSide: const BorderSide(color: Colors.black12),
                    // ),
                    // focusedBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    //   borderSide: const BorderSide(color: Colors.black12),
                    // ),
                    //labelText: "Mobile Number",
                    hintText: "  Mobile Number",
                    border: InputBorder.none,
                    prefixIcon: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 19, vertical: 6),
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // const Positioned(
                          //     top: 1,
                          //     bottom: 5,
                          //     child: Text(
                          //       "Country Code",
                          //       style: TextStyle(color: Colors.grey),
                          //     )),
                          GestureDetector(
                            onTap: () async {
                              final code = await countryPicker.showPicker(
                                  context: context);
                              setState(() {
                                countryCode = code;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(width: 0.5)),
                              child: Row(
                                children: [
                                  Container(
                                      child: countryCode != null
                                          ? countryCode!.flagImage
                                          : countryPicker.favoritesIcon),
                                  Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 6),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Text(
                                        countryCode?.dialCode ?? "+1",
                                        style: const TextStyle(
                                            color: Colors.black),
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    labelStyle: TextStyle(color: Colors.grey[600])),
              ),
            ),
            Container(
              width: 65,
              margin: const EdgeInsets.symmetric(horizontal: 45, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: Colors.transparent)),
              alignment: Alignment.topLeft,
              child: const Text(
                "Country code",
                style: TextStyle(
                    color: Colors.black,
                    overflow: TextOverflow.clip,
                    //decoration: TextDecoration.overline,
                    debugLabel: AutofillHints.countryCode,
                    height: 1.5,
                    fontSize: 10,
                    wordSpacing: 2),
              ),
            ),
          ]),
          Align(
            alignment: Alignment.topRight,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NeedHelp(),
                  ),
                );
              },
              child: const Text(
                'Need Help?',
                style: TextStyle(
                  color: Color(0xFF061E47),
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Text("By Proceeding, I accept the",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 125, 116, 116))),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TermAndCondition(),
                      ),
                    );
                  },
                  child: const Text(
                    'Terms and conditions',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      //fontFamily: 'Source Sans Pro',
                      fontSize: 12,
                      color: Color(0xFF061E47),
                      // fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const Text(
                  "and",
                  style: TextStyle(
                      fontSize: 12, color: Color.fromARGB(255, 125, 116, 116)),
                ),
                TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PrivacyPolicy(),
                    ),
                  ),
                  child: const Text(
                    'Privacy policy.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      //fontFamily: 'Source Sans Pro',
                      fontSize: 12,
                      color: Color(0xFF061E47),
                      //fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          phoneController.text.length > 9
              ? ElevatedButton(
                  onPressed: () => sendPhoneNumber(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xC0E0E0E0),
                    minimumSize: const Size(double.infinity, 60),
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                        color: Color.fromARGB(255, 163, 153, 153),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CustomButton(
                    onTap: () => sendPhoneNumber(),
                    text: 'Submit',
                  ),
                ),
          Center(
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Login With other Option',
                style: TextStyle(
                  color: Color(0xFF061E47),
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              'or login with',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(
            width: 300,
            child: Divider(
              height: 2,
              thickness: 1.4,
              indent: 80,
              color: Color(0xC0E0E0E0),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Color(0xFF606060)),
                      borderRadius: BorderRadius.circular(31)),
                  child: IconButton(
                    onPressed: () {
                      AuthServices().signInWithGoogle();
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) =>
                      //         AuthServices().signInWithGoogle(),
                      //   ),
                      // );
                    },
                    icon: Image.asset(
                      "..//../assets/images/google.jpg",
                    ),
                    iconSize: 50,
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Color(0xFF606060)),
                      borderRadius: BorderRadius.circular(31)),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SkipScreen(),
                        ),
                      );
                    },
                    icon: Image.asset(
                      "../../assets/images/fb.png",
                    ),
                    iconSize: 20,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  // void sendPhoneNumber() {
  //   final ap = Provider.of(context, listen: false);
  //   String phoneNumber = phoneController.text.trim();
  //   ap.signInWithPhone(context, "+${selectedCountry.phoneCode}$phoneNumber");
  // }

  void sendPhoneNumber() {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    String phoneNumber = phoneController.text.trim();
    ap.signInWithPhone(context, "+${countryCode!.dialCode}$phoneNumber");
  }
}
