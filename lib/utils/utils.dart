import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

pickImage(ImageSource source) async {
  final ImagePicker _picker = ImagePicker();
  final XFile? image = await _picker.pickImage(source: source);
  if (image != null) {
    return await image.readAsBytes();
  }
  return null;
}

ShowSnackBar( String msg, BuildContext context ){
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(msg))
  );
}