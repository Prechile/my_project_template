
import 'package:flutter_project_template/api/models/UserResponse.dart';
import 'package:flutter_project_template/api/service/LocalService.dart';
import 'package:get_storage/get_storage.dart';

class LocalRepository extends LocalService{
  GetStorage db = GetStorage();

  @override
  getUser() {
    var user = db.read("userCollection");
    return user == null ? null :UserResponse.fromJson(user);
  }


  @override
  saveUser({required user}) {
    db.write("userCollection", user.toJson());
  }

  @override
  Future<void> logout() async{
    await db.remove('userCollection');
  }


}