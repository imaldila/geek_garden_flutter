import 'package:flutter/material.dart';

class RTextFormField extends StatelessWidget {
  const RTextFormField({
    Key? key,
    this.controller,
    required this.label,
    this.textInputAction,
    this.keyboardType,
    this.initialValue,
  }) : super(key: key);

  final TextEditingController? controller;
  final String label;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textInputAction: textInputAction ?? TextInputAction.next,
      keyboardType: keyboardType ?? TextInputType.text,
      initialValue: initialValue,
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
