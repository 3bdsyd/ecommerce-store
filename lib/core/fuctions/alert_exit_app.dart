import 'dart:io';
import 'package:ecommerce_store/core/constant/package_const.dart';

Future<bool> alertExitApp(BuildContext context) {
  Get.defaultDialog(
    title: "Note",
    titleStyle: context.textTheme.bodyMedium,
    middleText: 'Do you want to exit the application ?',
    actions: [
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorConst.primaryColor,
        ),
        onPressed: () => exit(0),
        child: const Text("Ok"),
      ),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorConst.primaryColor,
        ),
        onPressed: () => Get.back(),
        child: const Text("Cancel"),
      ),
    ],
    barrierDismissible: false,
  );
  return Future.value(true);
}
