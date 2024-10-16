import 'package:flutter/material.dart';
import 'package:my_protfolio/src/constants/colors.dart';

class CustomTextFields extends StatelessWidget {
  const CustomTextFields(
      {super.key,
        this.controller,
      required this.hintText,
      required this.maxLines});
  final TextEditingController ? controller;
  final int maxLines;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      style: const TextStyle(
        color: CustomColor.ScaffoldBg,
      ),
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(16),
          filled: true,
          fillColor: CustomColor.whiteSecondary,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          hintText: hintText,
          hintStyle: const TextStyle(color: CustomColor.hintDark)),
    );
  }
}
