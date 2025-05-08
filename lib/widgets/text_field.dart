import 'package:flutter/material.dart';

class TextFieldInput extends StatefulWidget {

  final TextEditingController textEditingController;
  final String hintText;
  final bool isPass;
  final TextInputType textInputType;

  const TextFieldInput({super.key, 
    required this.textEditingController,
    required this.hintText,
    this.isPass = false,
    required this.textInputType,
  });

  @override
  State<TextFieldInput> createState() => _TextFieldInputState();
}

class _TextFieldInputState extends State<TextFieldInput> {

  @override
  Widget build(BuildContext context) {
    final inputborder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
    );
    return TextField(
      controller: widget.textEditingController,
      decoration:InputDecoration(
        hintText: widget.hintText ,
        focusedBorder: inputborder,
        enabledBorder: inputborder,
        errorBorder: inputborder,
        disabledBorder: inputborder,
        filled: true,
        contentPadding:  EdgeInsets.all(8),
      ),
      keyboardType: widget.textInputType ,
      obscureText: widget.isPass ,
    );
  }
}