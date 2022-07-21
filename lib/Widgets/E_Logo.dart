import 'package:flutter/material.dart';

class ELogo extends StatefulWidget {
  const ELogo({Key? key}) : super(key: key);

  @override
  State<ELogo> createState() => _ELogoState();
}

class _ELogoState extends State<ELogo> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14), color: Color(0xFF4CC590)),
      ),
      Container(
        margin: EdgeInsets.only(top: 14, left: 32),
        height: 70,
        width: 18,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
            color: Colors.white),
      ),
      Container(
        margin: EdgeInsets.only(top: 14, left: 56),
        height: 12,
        width: 16,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
            ),
            color: Colors.white),
      ),
      Container(
        margin: EdgeInsets.only(top: 44, left: 56),
        height: 10,
        width: 16,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            color: Colors.white),
      ),
      Container(
        margin: EdgeInsets.only(top: 72, left: 56),
        height: 12,
        width: 16,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
            ),
            color: Colors.white),
      ),
    ]);
  }
}
