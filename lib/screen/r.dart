import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Countrypicker extends StatefulWidget {
  const Countrypicker({super.key});

  @override
  State<Countrypicker> createState() => _CountrypickerState();
}

// ignore: camel_case_types
class _CountrypickerState extends State<Countrypicker> {
  //final countryPicker = const FlCountryCodePicker();

  //CountryCode? countryCode;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            //  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    offset: Offset(0, 4),
                    color: Color(0xffeeeeee)),
              ],
              // borderRadius: BorderRadius.circular(8),
              // border: Border.all(color: Colors.black.withOpacity(0.13))
            ),
            child: Stack(
              children: [
                InternationalPhoneNumberInput(
                  onInputChanged: (value) {},
                  cursorColor: Colors.black,
                  formatInput: false,
                  selectorConfig: const SelectorConfig(
                      selectorType: PhoneInputSelectorType.BOTTOM_SHEET),
                  inputDecoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 15, left: 0),
                    border: InputBorder.none,
                    hintText: "Enter Phone number",
                  ),
                ),
                // Positioned(
                //   left: 150,
                //   top: 8,
                //   child: Container(
                //     height: 40,
                //     width: 1,
                //     color: Colors.black.withOpacity(0.13),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
    // Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   crossAxisAlignment: CrossAxisAlignment.center,
    //   children: [
    //     TextFormField(
    //       keyboardType: TextInputType.number,
    //       textInputAction: TextInputAction.done,
    //       maxLines: 1,
    //       decoration: InputDecoration(
    //         labelText: "Enter phone number",
    //         border: InputBorder.none,
    //         prefixIcon: Container(
    //           padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
    //           margin: const EdgeInsets.symmetric(
    //             horizontal: 8,
    //           ),
    //           child: GestureDetector(
    //             onTap: () async {
    //               final code = await countryPicker.showPicker(context: context);
    //               setState(() {
    //                 countryCode = code;
    //               });
    //             },
    //             child: Row(
    //               children: [
    //                 Container(
    //                   padding: const EdgeInsets.symmetric(
    //                       horizontal: 16, vertical: 6),
    //                   decoration: BoxDecoration(
    //                       color: Colors.grey,
    //                       borderRadius: BorderRadius.circular(6)),
    //                   child: const Text(
    //                     "+1",
    //                     style: TextStyle(color: Colors.white),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ],
    // );
//   }
// }
