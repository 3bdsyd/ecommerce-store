import '../../../core/class/crud.dart';
import '../../../core/constants/app_link.dart';

class SignInRemote {
  Crud crud;
  SignInRemote(this.crud);
  getData(String email, String password) async {
    var response = await crud.postData(AppLink.authLogin, {
      'email': email,
      'password': password,
    });
    return response.fold((l) => l, (r) => r);
  }
}
