import 'package:flutter/material.dart';

class localtextfeild extends StatelessWidget {
  const localtextfeild(
      {this.hint, this.maxLines = 1, this.onChanged});
  final String? hint;
  final int? maxLines;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      maxLines: maxLines,
      cursorColor: Color.fromARGB(255, 245, 243, 243),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        hintText: '$hint',
        hintStyle: const TextStyle(color: Color.fromARGB(255, 236, 236, 238)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
              width: 2, color: Color.fromARGB(255, 233, 233, 239)),
        ),
      ),
    );
  }
}
