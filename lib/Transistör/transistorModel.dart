class TransistorModel {
  String? ad;
  String? vceo;
  String? vcbo;
  String? vebo;
  String? ic;
  String? ta;
  String? tc;
  String? tstg;
  String? ib;

  TransistorModel(
      {this.ad,
      this.vceo,
      this.vcbo,
      this.vebo,
      this.ic,
      this.ta,
      this.tc,
      this.tstg,
      this.ib});

  TransistorModel.fromJson(Map<String, dynamic> json) {
    ad = json['ad'];
    vceo = json['Vceo'];
    vcbo = json['Vcbo'];
    vebo = json['Vebo'];
    ic = json['Ic'];
    ta = json['Ta'];
    tc = json['Tc'];
    tstg = json['Tstg'];
    ib = json['Ib'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ad'] = this.ad;
    data['Vceo'] = this.vceo;
    data['Vcbo'] = this.vcbo;
    data['Vebo'] = this.vebo;
    data['Ic'] = this.ic;
    data['Ta'] = this.ta;
    data['Tc'] = this.tc;
    data['Tstg'] = this.tstg;
    data['Ib'] = this.ib;
    return data;
  }
}
