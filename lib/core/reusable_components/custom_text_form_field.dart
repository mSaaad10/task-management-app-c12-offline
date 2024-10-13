import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

typedef Validator = String? Function(String?);

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key,
      required this.hintText,
      this.validator,
      this.controller,
      this.isSecure = false});

  String hintText;
  Validator? validator;
  TextEditingController? controller;
  bool isSecure;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        obscureText: isSecure,
        validator: validator,
        controller: controller,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 2,
                )),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 2,
                )),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 2,
                )),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2,
                )),
            hintText: hintText,
            hintStyle: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Color(0xFF000000))),
      ),
    );
  }
}
