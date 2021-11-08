import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;
// 0 ... 3  brighter ... darker
//T means Transparent
//GREY
const Color greyP = Color.fromRGBO(101, 96, 96, 1);
const Color greyDarker = Color.fromRGBO(136, 137, 137, 1);
const Color greyDarker2 = Color.fromRGBO(89, 90, 91, 1);
const Color greylighterT = Color.fromRGBO(18, 19, 20, 0.7);
const Color greylighter = Color.fromRGBO(153, 154, 155, 1);
const Color greyLighter2 = Color.fromRGBO(232, 232, 232, 1);
const Color greyLighter3 = Color.fromRGBO(243, 243, 243, 1);
const Color greyLighter4 = Color.fromRGBO(249, 249, 249, 1);
const Color greyLighter5 = Color.fromRGBO(219, 220, 220, 1);



//BLUE
const Color primaryColor = Color.fromRGBO(35, 196, 219, 1);
const Color primaryColor2 = Color.fromRGBO(0, 162, 185, 1);
const Color blueP = Color.fromRGBO(34, 109, 222, 1);
const Color blueLighter = Color.fromRGBO(235, 248, 249, 1);

//Green
const Color greenP = Color.fromRGBO(91, 186, 46, 1);
const Color greenLighter = Color.fromRGBO(239, 248, 234, 1);

//RED
const Color redP = Color.fromRGBO(255, 50, 89, 1);
const Color redDarker = Color.fromRGBO(255, 235, 239, 1);

//Default
const Color white = Colors.white;
const Color black = Colors.black;
const Color backgroundColor = Color.fromRGBO(245,245,245,1);