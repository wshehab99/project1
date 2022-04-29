import 'package:flutter/material.dart';
import 'package:flutter/src/material/material_button.dart';
import 'package:flutter/src/material/icon_button.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUppercase = true,
  double radius = 0.0,
  required Function? function(),
  required String text,
}) =>
    MaterialButton(
      onPressed: function,
      child: Container(
        height: 40.0,
        width: width,
        child: Center(
          child: Text(
            isUppercase ? text.toUpperCase() : text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: background,
        ),
      ),
    );

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  required Function validate,
  required String label,
  Function? onSubmit,
  required IconData perfix,
  bool isPassword = false,
  IconData? suffix,
  Function? suffixpressed()?,
}) =>
    TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
        prefixIcon: Icon(
          perfix,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                icon: Icon(
                  suffix,
                ),
                onPressed: suffixpressed != null ? suffixpressed : null,
              )
            : null,
      ),
      obscureText: isPassword,
      keyboardType: type,
      onFieldSubmitted: onSubmit != null ? onSubmit() : null,
      validator: (value) {
        return validate(value);
      },
    );
