import 'dart:ffi';

import 'package:tms/consts/string_const.dart';

class Poojas {
  final String title;
  final String? descreption;
  final Float? price;
  final bool? isSpecial;
  final String? offeringDays;

  Poojas({
    required this.title,
    this.descreption,
    required this.price,
    this.offeringDays = allDays, //'alldays
    this.isSpecial = false,
  });
}
