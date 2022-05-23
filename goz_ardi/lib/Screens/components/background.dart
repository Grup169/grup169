import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,

  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            height: 200,
            top: 0,
            left: -50,
            child: Image.asset(
              "assets/theatre-masks-xl.png",
              width: size.width * 0.7,
            ),
          ),
          Positioned(
            bottom:-80,
            left: -80,
            child: Image.asset(
              "assets/popcorn-xl.png",
              width: size.width * 0.6,
            ),
          ),
          Positioned(
            bottom: -70,
            right: -80,
            child: Image.asset(
              "assets/guitar-xl.png",
              width: size.width * 0.7,
            ),
          ),
          Positioned(
            height: 500,
            left: 0,
            child: Image.asset(
              "assets/museum-xl.png",
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            height: 150,
            right: -90,
            child: Image.asset(
              "assets/ticket-xl.png",
              width: size.width * 0.7,
            ),
          ),
          Positioned(
            height: 200,
            top: -10,
            right: -100,
            child: Image.asset(
              "assets/film-xl.png",
              width: size.width * 0.8,
            ),
          ),
          SizedBox(height: size.height * 0.03,),
          Positioned(
            top:100,
            child: Image.asset(
              "assets/logo.png",
              width: size.width * 0.8,

            ),
          ),
          child,
        ],
      ),
    );
  }
}
