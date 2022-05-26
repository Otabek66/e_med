
import 'package:e_med/core/constants/color/ColorConst.dart';
import 'package:flutter/material.dart';

class MyTextField {
  static textField({
    required String text,
    IconButton? iconButton,
    required TextEditingController controller,
    IconButton? phoneNumber,
    bool read = false,
    var onChanged,
    VoidCallback? onTap,
    FormFieldValidator<String>? validator,
    bool isShown = false,
  }) {
    return TextFormField(
        controller: controller,
        readOnly: read,
        onChanged: onChanged,
        onTap: onTap,
        obscureText: isShown,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: const TextStyle(color: Colors.grey),
          suffixIcon: iconButton,
          prefixIcon: phoneNumber,
          fillColor: Colors.white,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(color: ColorConst.kPrimaryColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(color: ColorConst.blackfortext),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(color: ColorConst.blackfortext),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(color: ColorConst.kPrimaryColor),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        validator: validator);
  }
}
