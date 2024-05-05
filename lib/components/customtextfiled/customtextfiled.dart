import 'package:flutter/material.dart';

// ignore: must_be_immutable
class customtextfiled extends StatefulWidget {
  TextEditingController controller = TextEditingController();
  final String label;
  final IconData icon;
  final bool isPassword;
  customtextfiled({
    required this.controller,
    required this.label,
    required this.icon,
    this.isPassword = false,
    super.key,
  });

  @override
  State<customtextfiled> createState() => _customtextfiledState();
}

class _customtextfiledState extends State<customtextfiled> {
  bool isobscure = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: widget.controller,
        obscureText: isobscure,
        decoration: InputDecoration(
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
            label: Text(widget.label),
            prefixIcon: Icon(widget.icon),
            suffixIcon: widget.isPassword == true
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        isobscure = !isobscure;
                      });
                    },
                    child: Icon(
                        isobscure ? Icons.visibility_off : Icons.visibility))
                : null),
      ),
    );
  }
}
