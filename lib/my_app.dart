import 'package:ecommerce_store/core/constant/package_const.dart';

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
          initialRoute: ScreenNames.splashScreen,
          getPages: Routes.getPages,
          initialBinding: CrudBinding(),
        );
      },
    );
  }
}
