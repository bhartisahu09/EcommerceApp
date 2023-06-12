import 'package:flutter/material.dart';

class NeedHelp extends StatefulWidget {
  const NeedHelp({super.key});

  @override
  State<NeedHelp> createState() => _NeedHelpState();
}

class _NeedHelpState extends State<NeedHelp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: const [
        Text("hello"),
      ]),
    );
  }
}
