import 'package:flutter/material.dart';


class DefaultTextField extends StatefulWidget {
  DefaultTextField({super.key,
    required this.controller,
    required this.keyboardtype,
    required this.labletext,
    this.onsubmit,
    this.onChange,
    this.validate,
    this.suffixpressed,
    this.prefixicon,
    this.suffixicon,
    this.fontsize = 18.0,
    this.height = 45,
    this.weight = 250,
    this.ispass = false,
    this.iconColor = Colors.white,
    this.fillcolor = Colors.black12,
    this.radius = 5.0,
    this.maxlenth,
  });
  TextEditingController controller;
  TextInputType? keyboardtype;
  ValueChanged? onsubmit;
  ValueChanged? onChange;
  FormFieldValidator? validate;
  VoidCallback? suffixpressed;
  late String labletext;
  IconData? prefixicon;
  IconData? suffixicon;
  double fontsize;
  double height;
  double weight;
  bool ispass;
  Color iconColor;
  Color fillcolor;
  double radius;
  int? maxlenth;

  @override
  State<DefaultTextField> createState() => _DefaultTextFieldState();
}

class _DefaultTextFieldState extends State<DefaultTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.weight,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.radius), color: widget.fillcolor),
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
            hintText: widget.labletext,
            hintStyle: const TextStyle(
                fontSize: 18, color: Color(0xff858585), fontWeight: FontWeight.w400),
            prefixIcon: widget.prefixicon != null
                ? Icon(
              widget.prefixicon,
              color: widget.iconColor,
            )
                : null,
            suffixIcon: widget.suffixicon != null
                ? IconButton(
              onPressed: () {
                widget.suffixpressed!();
              },
              icon: Icon(widget.suffixicon),
              color: widget.iconColor,
            )
                : null,
            // border:const OutlineInputBorder(),
            border: InputBorder.none,

            prefix: const SizedBox(
              width: 15,
            )),
        keyboardType: widget.keyboardtype,
        obscureText: widget.ispass,
        onFieldSubmitted: widget.onsubmit,
        onChanged: widget.onChange,
        validator: widget.validate,
        style: TextStyle(fontSize: widget.fontsize, fontWeight: FontWeight.w500,color: Colors.black),
        maxLength: widget.maxlenth,
        cursorColor: Colors.black,
      ),
    );

  }
}

Widget mytext({
  required String text,
  required FontWeight font,
  required double siz,
  required Color col,
  required FontStyle fontS,
}) =>
    Text(
      text,
      style: TextStyle(
        color: col,
        fontWeight: font,
        fontSize: siz,
        fontStyle: fontS,
      ),
    );