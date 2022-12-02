import 'package:flutter/material.dart';

class RTextFormField extends StatelessWidget {
  const RTextFormField({
    Key? key,
    required this.controller,
    required this.label,
    this.textInputAction,
    this.keyboardType,
  }) : super(key: key);

  final TextEditingController? controller;
  final String label;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textInputAction: textInputAction ?? TextInputAction.next,
      keyboardType: keyboardType ?? TextInputType.text,
      decoration: InputDecoration(
        label: Text(label),
        labelStyle: const TextStyle(fontSize: 12, color: Colors.blueAccent),
        enabled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Colors.blueGrey,
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: Colors.blue.shade500,
            width: 2,
          ),
        ),
      ),
    );
  }
}
