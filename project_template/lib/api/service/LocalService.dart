
import '../models/UserResponse.dart';

abstract class LocalService {

 saveUser({required UserResponse user});
 UserResponse? getUser();

 Future<void> logout();
}