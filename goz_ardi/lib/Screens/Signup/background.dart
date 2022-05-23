import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,

      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(

            top:100,
            child: Image.asset(
              "assets/logo.png",
              width: size.width * 0.33,
            ),
          ),
          Positioned(
            left: 25,
            bottom: 590,
            child: Image.asset(
              "assets/shape [SHAPEshapes-07. Organic-Organic - Shape 12].png",
              width: size.width * 0.33,
            ),
          ),
          Positioned(
            height:1355,
            top: -5,
            right: -135,
            child: Image.asset(
              "assets/Organic - Shape 11].png",
              width: size.width * 0.9,
            ),
          ),
          Positioned(
            height:1310,
            bottom: 0,

            left: -25,

            child: Image.asset(
              "assets/shape [SHAPEshapes-07. Organic-Organic - Shape 10].png",
              width: size.width * 0.33,
            ),
          ),
          child,

        ],
      ),
    );
  }
}
