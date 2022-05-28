// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class EElevatedButton extends StatefulWidget {
  String text;
  String prColor='#FEC42D';
  Color textColor;
  // ignore: prefer_typing_uninitialized_variables
  var onPressed;
  double height;
  double width;
  double radius;
  EElevatedButton({Key? key,
    required this.text, required this.prColor,
    required this.textColor,
    required this.onPressed,required this.radius,required this.width,required this.height
  }) : super(key: key);
  @override
  State<EElevatedButton> createState() => _ElevatedButtonState();
}
class _ElevatedButtonState extends State<EElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        autofocus: true,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.radius),
          ),
          primary: HexColor(widget.prColor),
        ),
        onPressed: widget.onPressed,
        child: SizedBox(
          width: widget.width,
          height: widget.height,
          child:  Center(
              child:Text(
                widget.text,
                style: TextStyle(
                    fontSize: 16, color: widget.textColor),
              )),
        ));
  }
}
Widget defultText({String? data}) {
  return SizedBox(
    child: Text(
      '$data',
      style:const TextStyle(fontSize: 14,
          color: Colors.black54),
    ),
  );
}

void navigateTo (context,widget)=>Navigator.push(context,
    MaterialPageRoute(builder: (context)=>widget));

