import 'package:flutter/material.dart';

class CustomTextField extends TextField {
  const CustomTextField({
    Key key,
    TextEditingController controller,
    FocusNode focusNode,
    ValueChanged<String> onChanged,
    InputDecoration decoration,
  }) : super(
          key: key,
          focusNode: focusNode,
          onChanged: onChanged,
          decoration: decoration ?? _defaultDecoration,
        );

  static const InputDecoration _defaultDecoration = InputDecoration(
    hintStyle: const TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.green),
    ),
  );
}
