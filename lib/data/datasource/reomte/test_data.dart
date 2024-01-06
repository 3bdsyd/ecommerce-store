import '../../../core/class/crud.dart';
import '../../../core/constants/app_link.dart';

class TestData {
  Crud crud;
  TestData(this.crud);
  getData() async {
    var response = await crud.postData(AppLink.baseUrl, {});
    return response.fold((l) => l, (r) => r);
  }
}
