import 'package:flutter/material.dart';

class CardCore extends StatelessWidget {
  final Function press;
  const CardCore({Key key, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 18.0),
      child: InkWell(
        onTap: press,
        child: Container(
          margin: EdgeInsets.only(bottom: 25),
          width: double.infinity,
          height: 185,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(38.5),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 33,
                color: Color(0xFFD3D3D3).withOpacity(.84),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
