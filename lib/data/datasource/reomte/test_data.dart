import 'package:ecommerce_store/core/constants/app_package.dart';

class TestData {
  Crud crud;
  TestData(this.crud);
  getData() async {
    var response = await crud.crud(
      TypeRequest.get,
      AppLink.baseUrl,
    );
    return response.fold((l) => l, (r) => r);
  }
}
