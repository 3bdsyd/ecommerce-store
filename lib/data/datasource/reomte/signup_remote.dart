import '../../../core/class/crud.dart';
import '../../../core/constant/api_links.dart';

class SignUpRemote {
  Crud crud;
  SignUpRemote(this.crud);
  getData(String email, String userName, String password) async {
    var response = await crud.postData(
      ApiLinks.authSignUp,
      {
        "name": userName,
        "email": email,
        "password": password,
      },
    );
    return response.fold((l) => l, (r) => r);
  }
}
