class TristorModel {
  String? ad;
  String? vdrm;
  String? vrrm;
  String? itsm;
  String? itav;
  String? itrms;
  String? igt;

  TristorModel(
      {this.ad,
      this.vdrm,
      this.vrrm,
      this.itsm,
      this.itav,
      this.itrms,
      this.igt});

  TristorModel.fromJson(Map<String, dynamic> json) {
    ad = json['ad'];
    vdrm = json['Vdrm'];
    vrrm = json['Vrrm'];
    itsm = json['Itsm'];
    itav = json['Itav'];
    itrms = json['Itrms'];
    igt = json['Igt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ad'] = this.ad;
    data['Vdrm'] = this.vdrm;
    data['Vrrm'] = this.vrrm;
    data['Itsm'] = this.itsm;
    data['Itav'] = this.itav;
    data['Itrms'] = this.itrms;
    data['Igt'] = this.igt;
    return data;
  }
}
