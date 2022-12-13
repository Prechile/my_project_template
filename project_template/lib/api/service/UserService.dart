
import '../models/LoginRequest.dart';
import '../models/UserResponse.dart';

abstract class UserService{

 Future<UserResponse> login({required String url, required LoginRequest loginModel});
 Future<bool> changePassword({required String token,required String oldPassword, required String newPassword});
 Future<bool> deconnexion({required String url,required String agentToken});

 }