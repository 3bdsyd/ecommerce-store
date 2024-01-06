import 'package:ecommerce_store/core/constants/app_package.dart';
import 'package:ecommerce_store/data/datasource/reomte/signin_remote.dart';

abstract class SignInController extends GetxController {
  void getData();
  void returnToPage();
}

class SignInControllerImp extends SignInController {
  // ----------------------------  onInit the sign up controller   -----------------------------------
  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

// ----------------------------  dispose the sign up controller   -----------------------------------
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  SignInRemote signInRemoteController = SignInRemote(Get.find());
  final MyServices myServicesController = Get.find();
//----------------------------------------------------------------

  final GlobalKey<FormState> globalKeySignIn = GlobalKey<FormState>();
//----------------------------------------------------------------

  late TextEditingController email;
  late TextEditingController password;
//----------------------------------------------------------------

  Map<String, dynamic> data = {};

  late StatusRequest statusRequest = StatusRequest.none;

//----------------------------------------------------------------
  @override
  void getData() async {
    if (globalKeySignIn.currentState!.validate()) {
      // print(globalKeySignIn.currentState!.validate());
      statusRequest = StatusRequest.loading;
      update();
      var response = await signInRemoteController.getData(
        email.text,
        password.text,
      );
      //  print("is resp in controller: ----> $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['code'] == 0) {
          data.addAll(response['data']);
          Get.offNamed(AppNameScreen.otpAuth);
          // print(data['Token']);
          myServicesController.getBox.write('Token', data['Token']);
          // print(myServicesController.getBox.read('Token'));
        } else {
          Get.snackbar('Error', response['message']);
          statusRequest = StatusRequest.failure;
          // print('error in server');
        }
      }
      update();
    }
  }
//----------------------------------------------------------------

  @override
  void returnToPage() {
    statusRequest = StatusRequest.none;
    update();
  }
}
