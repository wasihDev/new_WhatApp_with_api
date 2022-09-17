import 'package:flutter/material.dart';

class EditableTextField extends StatelessWidget {
  const EditableTextField({
    Key? key,
    required this.enterText,
    required this.icon,
    required this.hideText,
    required this.floatText,
  }) : super(key: key);
  final String enterText;
  final IconData icon;
  final bool hideText;
  final String floatText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
              style: const TextStyle(color: Colors.white),
              obscureText: hideText,
              cursorColor: Colors.white,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide:
                        const BorderSide(color: Colors.white, width: 1.5),
                  ),
                  prefixIcon: Icon(icon, color: Colors.white),
                  prefixIconColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  labelStyle:
                      const TextStyle(color: Colors.white, fontSize: 17),
                  label: Text(floatText),
                  fillColor: Colors.white,
                  hintStyle: TextStyle(color: Colors.grey[500], fontSize: 16),
                  hintText: enterText)),
        )
      ],
    );
  }
}
