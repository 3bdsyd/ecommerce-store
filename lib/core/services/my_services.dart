import 'package:ecommerce_store/core/constant/package_const.dart';

class MyServices extends GetxService {
  late GetStorage getBox;

  Future<MyServices> init() async {
//----------------------------------------------------------------

    WidgetsFlutterBinding.ensureInitialized();

//----------------------------------------------------------------

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

//----------------------------------------------------------------

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

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
