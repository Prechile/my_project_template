
/// userName : "partenertest@gmail.com"
/// password : "password"

class LoginRequest{
  String? token;
  String? login;
  String? pass;

  LoginRequest({
    required this.token,
    required this.login,
    required this.pass
  });


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = token;
    map['Login'] = login;
    map['Pass'] = pass;
    return map;
  }

  LoginRequest.fromJson(dynamic json){
    token = json['token'];
    login = json['login'];
    pass = json['pass'];
  }

}