import 'dart:ffi';

class Smbhavana {
  final String donerName;
  final String donerAddress;
  final Float amount;
  final String? phNo;

  Smbhavana({
    required this.donerName,
    required this.donerAddress,
    required this.amount,
    this.phNo,
  });
}
