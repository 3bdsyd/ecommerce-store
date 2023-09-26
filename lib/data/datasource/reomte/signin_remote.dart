import '../../../core/class/crud.dart';
import '../../../core/constant/api_links.dart';

class SignInRemote {
  Crud crud;
  SignInRemote(this.crud);
  getData(String email, String password) async {
    var response = await crud.postData(ApiLinks.authLogin, {
      'email': email,
      'password': password,
    });
    return response.fold((l) => l, (r) => r);
  }
}
