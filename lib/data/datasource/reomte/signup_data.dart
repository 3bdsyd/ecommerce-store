import 'package:ecommerce_store/core/constants/app_package.dart';

class SignUpData {
  Crud crud;
  SignUpData(this.crud);
  postSignUpData(
    final String email,
    final String userName,
    final String password,
  ) async {
    var response = await crud.crud(
      TypeRequest.post,
      AppLink.authSignUp,
      {
        'email': 'test@tvunetworks.com',
        'password':
            '2B85045C8FBF6A7F277F18CD62BA49047ABC53D1D49FD43EEE3C80D129F2053B181B4BAFBA851834CD6F084CA2AAC311235F1748856DA390A88221BE49793CC3',
        'expireTime': 360
      },
    );
    return response.fold((l) => l, (r) => r);
  }
}
