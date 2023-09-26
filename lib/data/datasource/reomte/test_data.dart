import '../../../core/class/crud.dart';
import '../../../core/constant/api_links.dart';

class TestData {
  Crud crud;
  TestData(this.crud);
  getData() async {
    var response = await crud.postData(ApiLinks.baseUrl, {});
    return response.fold((l) => l, (r) => r);
  }
}
