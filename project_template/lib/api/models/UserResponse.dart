import 'dart:convert';

UserResponse userResponseFromJson(String str) => UserResponse.fromJson(json.decode(str));
String userResponseToJson(UserResponse data) => json.encode(data.toJson());
class UserResponse {
  UserResponse({
    this.id,
    this.name,
    this.phone,
    this.sex,
    this.imageString,
    this.activity,
    this.qrCode,
    this.login,
    this.token,
    this.statusClient
  });

  UserResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['Name'];
    phone = json['Phone'];
    sex = json['Sex'];
    imageString = json['ImageString'];
    activity = json['Activity'];
    qrCode = json['QrCode'];
    login = json['Login'];
    token = json['token'];
    statusClient = json['StatusClient'];
  }

  int? id;
  String? name;
  String? phone;
  String? sex;
  String? imageString;
  String? activity;
  String? qrCode;
  String? login;
  String? token;
  bool? statusClient;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['Name'] = name;
    map['Phone'] = phone;
    map['Sex'] = sex;
    map['ImageString'] = imageString;
    map['Activity'] = activity;
    map['QrCode'] = qrCode;
    map['Login'] = login;
    map['token'] = token;
    map['StatusClient'] = statusClient;
    return map;
  }

}