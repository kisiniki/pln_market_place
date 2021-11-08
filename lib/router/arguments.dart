import 'package:flutter/material.dart';

class StationDetailArgument<String> {
  final String name;
  final String address;
  final String distance;
  final String direction;
  final String chagres;
  final String connections;
  StationDetailArgument({ Key? key ,
      required this.name,
      required this.address,
      required this.distance,
      required this.direction,
      required this.chagres,
      required this.connections});
}