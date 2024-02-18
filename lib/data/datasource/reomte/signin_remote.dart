import 'package:ecommerce_store/core/constants/app_package.dart';

class SignInRemote {
  Crud crud;
  SignInRemote(this.crud);
  getData(String email, String password) async {
    var response = await crud.crud(
      TypeRequest.get,
      AppLink.authLogin, {
      'email': email,
      'password': password,
    });
    return response.fold((l) => l, (r) => r);
  }
}
