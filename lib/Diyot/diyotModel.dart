class DiyotModel {
  String? ad;
  String? vz;
  String? izt;
  String? zztAtIzk;
  String? zzk;
  String? izk;
  String? iR;
  String? vR;
  String? tA;
  String? izm;

  DiyotModel(
      {this.ad,
      this.vz,
      this.izt,
      this.zztAtIzk,
      this.zzk,
      this.izk,
      this.iR,
      this.vR,
      this.tA,
      this.izm});

  DiyotModel.fromJson(Map<String, dynamic> json) {
    ad = json['ad'];
    vz = json['Vz'];
    izt = json['Izt'];
    zztAtIzk = json['Zzt_at_Izk'];
    zzk = json['Zzk'];
    izk = json['Izk'];
    iR = json['IR'];
    vR = json['VR'];
    tA = json['TA'];
    izm = json['Izm'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ad'] = this.ad;
    data['Vz'] = this.vz;
    data['Izt'] = this.izt;
    data['Zzt_at_Izk'] = this.zztAtIzk;
    data['Zzk'] = this.zzk;
    data['Izk'] = this.izk;
    data['IR'] = this.iR;
    data['VR'] = this.vR;
    data['TA'] = this.tA;
    data['Izm'] = this.izm;
    return data;
  }
}
