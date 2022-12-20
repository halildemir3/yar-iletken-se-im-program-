class MosfetModel {
  String? ad;
  String? vdss;
  String? id;
  String? idm;
  String? vgs;
  String? iar;
  String? eas;
  String? tstg;
  String? pd;

  MosfetModel(
      {this.ad,
      this.vdss,
      this.id,
      this.idm,
      this.vgs,
      this.iar,
      this.eas,
      this.tstg,
      this.pd});

  MosfetModel.fromJson(Map<String, dynamic> json) {
    ad = json['ad'];
    vdss = json['Vdss'];
    id = json['Id'];
    idm = json['Idm'];
    vgs = json['Vgs'];
    iar = json['Iar'];
    eas = json['Eas'];
    tstg = json['Tstg'];
    pd = json['Pd'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ad'] = this.ad;
    data['Vdss'] = this.vdss;
    data['Id'] = this.id;
    data['Idm'] = this.idm;
    data['Vgs'] = this.vgs;
    data['Iar'] = this.iar;
    data['Eas'] = this.eas;
    data['Tstg'] = this.tstg;
    data['Pd'] = this.pd;
    return data;
  }
}
