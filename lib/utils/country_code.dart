import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';

class CountryPic extends StatefulWidget {
  const CountryPic({super.key});

  @override
  State<CountryPic> createState() => _CountryPicState();
}

class _CountryPicState extends State<CountryPic> {
  final countryPicker = const FlCountryCodePicker();

  CountryCode? countryCode;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextFormField(
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.done,
          maxLines: 1,
          decoration: InputDecoration(
              labelText: "Enter Phone Number",
              border: InputBorder.none,
              prefixIcon: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
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
                        final code =
                            await countryPicker.showPicker(context: context);
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
                                    horizontal: 15, vertical: 6),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Text(
                                  countryCode?.dialCode ?? "+1",
                                  style: const TextStyle(color: Colors.black),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              labelStyle: TextStyle(color: Colors.grey[600])),
        )
      ],
    );
  }
}
