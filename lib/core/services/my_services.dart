import 'package:ecommerce_store/core/constants/app_package.dart';

class MyServices extends GetxService {
  late GetStorage getBox;

  Future<MyServices> init() async {
    WidgetsFlutterBinding.ensureInitialized();

//----------------------------------------------------------------
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

//----------------------------------------------------------------

 
//----------------------------------------------------------------

    await GetStorage.init();
    getBox = GetStorage();

//----------------------------------------------------------------
    return this;
  }
}

initialServices() async {
  await Get.putAsync(() => MyServices().init());
}
