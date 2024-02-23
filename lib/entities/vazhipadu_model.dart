import 'package:tms/consts/string_const.dart';

class Vazhipad {
  final String title;
  final int price;
  final String? descreption;
  final bool? special;
  final String? processingTime;
  final String? dayToOffer;

  Vazhipad({
    required this.title,
    required this.price,
    this.descreption,
    this.special = false,
    this.processingTime,
    this.dayToOffer = allDays, // "alldays"
  });
}
