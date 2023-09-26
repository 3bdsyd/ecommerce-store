import 'package:ecommerce_store/router/binding/crud_binding.dart';
import 'package:ecommerce_store/router/routes.dart';
import 'package:ecommerce_store/view/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'core/theme/theme_data.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeApp.themeData,
          initialRoute: ScreenNames.home,
          getPages: Routes.getPages,
          initialBinding: CrudBinding(),
        );
      },
    );
  }
}
