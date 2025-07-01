import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController control;
  final String hint;
  final Icon icon;
  final String? Function(String?) validate;

  const CustomTextFormField({
    required this.control,
    required this.hint,
    required this.icon,
    required this.validate,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: control,
      validator: validate,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(right: 40, left: 20),
          child: icon,
        ),
        filled: true,
        fillColor: Colors.grey[200],
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff91DDFF),
          ),
        ),
        border: const OutlineInputBorder(),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff6A9EAE)),
        ),
      ),
    );
  }
}
