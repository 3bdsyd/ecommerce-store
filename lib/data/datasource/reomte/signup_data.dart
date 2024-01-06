import 'package:ecommerce_store/core/constants/app_package.dart';

class SignUpData {
  Crud crud;
  SignUpData(this.crud);
  getData(
    final String email,
    final String userName,
    final String password,
  ) async {
    var response = await crud.postData(
      AppLink.authSignUp,
      {
        "name": userName,
        "email": email,
        "password": password,
      },
    );
    return response.fold((l) => l, (r) => r);
  }
}
