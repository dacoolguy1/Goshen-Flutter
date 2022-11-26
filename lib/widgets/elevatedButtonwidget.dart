import 'package:flutter/material.dart';

class ElevatedButtonwidget extends StatefulWidget {
  final String elevatedtext;
  final Color elevatedCOlor;
  final Color textcolor;
  final Function? func;
  const ElevatedButtonwidget({
    required this.elevatedtext,
    required this.elevatedCOlor,
    required this.textcolor,
    this.func,
    Key? key,
  }) : super(key: key);

  @override
  State<ElevatedButtonwidget> createState() => _ElevatedButtonwidgetState();
}

class _ElevatedButtonwidgetState extends State<ElevatedButtonwidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        widget.func!();
      },
      child: Text(
        widget.elevatedtext,
        style: TextStyle(color: widget.textcolor),
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: widget.elevatedCOlor,
          fixedSize: Size(148, 52),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          )),
    );
  }
}
