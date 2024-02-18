import 'package:ecommerce_store/core/constants/app_package.dart';

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
          theme: AppTheme.themeData,
          initialRoute: AppNameScreen.home,
          getPages: Routes.getPages,
          initialBinding: CrudBinding(),
        );
      },
    );
  }
}
