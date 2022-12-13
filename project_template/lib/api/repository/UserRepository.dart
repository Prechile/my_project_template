import 'dart:convert';
import 'dart:io';
import 'package:flutter_project_template/constants/Network.dart';
import 'package:http/io_client.dart';

import 'package:flutter_project_template/api/models/LoginRequest.dart';
import 'package:flutter_project_template/api/models/UserResponse.dart';
import 'package:flutter_project_template/api/service/UserService.dart';

class UserRepository extends UserService{
  @override
  Future<bool> changePassword({required String token, required String oldPassword, required String newPassword}) async{
    final ioc =  HttpClient();
    ioc.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
    final http =  IOClient(ioc);
    String url = "$BASE_URL$URL_CHANGE_PASSWORD?token=$token&oldPassword=$oldPassword&newPassword=$newPassword";
    final req = await http.get(Uri.parse(url), headers:header).then((response) {
      if(response.statusCode == 200){
        var myresponse = jsonDecode(response.body);
        return true;
      }
      else{
        throw Exception("Une erreur est survenue, veuillez réssayer");
      }
    });

    return req;
  }


  @override
  Future<UserResponse> login({required String url, required LoginRequest loginModel}) async{

    final ioc =  HttpClient();
    ioc.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
    final http = IOClient(ioc);
    String url = BASE_URL+URL_LOGIN;
    var body = utf8.encode(jsonEncode(loginModel));

    final req = await http.post(Uri.parse(url), headers:header, body: body).then((response) {
      if(response.statusCode == 200){
        var myresponse = jsonDecode(response.body);
        return UserResponse.fromJson(myresponse);
      }
      else{
        throw Exception("Une erreur est survenue, veuillez réssayer");
      }
    });

    return req;
  }

  @override
  Future<bool> deconnexion({required String url, required String agentToken}) {
    // TODO: implement deconnexion
    throw UnimplementedError();
  }

}