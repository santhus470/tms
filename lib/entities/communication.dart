class Communication {
  final String email;
  final String phNo;
  final String address;
  final String? fbId;
  final String? xid;
  final String? whatsapp;
  final String? ytd;
  final String? locationLt;
  final String? locationLg;

  Communication(
      {required this.email,
      required this.phNo,
      required this.address,
      this.fbId,
      this.xid,
      this.whatsapp,
      this.ytd,
      this.locationLt,
      this.locationLg});
}
