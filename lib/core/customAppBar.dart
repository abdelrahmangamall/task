import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class customAppBar extends StatelessWidget{
  String title;

  customAppBar(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
        child: Text(title,
          // textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 26,

              fontWeight: FontWeight.w400
          ),),
      ),
        const SizedBox(height: 15,),
        const Divider(
          thickness: .5,
          color: Colors.black,),
        const SizedBox(height: 30,),
      ]
    );

  }

}