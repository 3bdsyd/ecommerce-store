import 'package:ecommerce_store/core/constant/package_const.dart';

class MyServices extends GetxService {
  late GetStorage getBox;

  Future<MyServices> init() async {
//----------------------------------------------------------------
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

//----------------------------------------------------------------

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    WidgetsFlutterBinding.ensureInitialized();
    await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);

//----------------------------------------------------------------

    await GetStorage.init();
    getBox = GetStorage();
    // getBox.remove('rankPage');
    // currentPage = GetStorage().read('rankPage');
    return this;
  }
}

initialServices() async {
  await Get.putAsync(() => MyServices().init());
}
