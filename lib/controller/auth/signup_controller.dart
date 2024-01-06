import 'package:ecommerce_store/core/constants/app_package.dart';

abstract class SignUpController extends GetxController {
  void changeObscurePassword();
  void changeApprovalStandards();
}

class SignUpControllerImp extends SignUpController {
  SignUpData signUpRemoteController = SignUpData(Get.find());
  final MyServices myServicesController = Get.find();

//----------------------------------------------------------------

  final GlobalKey<FormState> globalKeySignUp = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

//----------------------------------------------------------------

  bool obscureTextShow = true;
  bool approvalOfStandards = false;

//----------------------------------------------------------------

  Map<String, dynamic> data = {};

  late StatusRequest statusRequest = StatusRequest.none;

  Future<void> signUp() async {}

//----------------------------------------------------------------
  @override
  void getData() async {
    if (globalKeySignUp.currentState!.validate()) {
      if (approvalOfStandards) {
        try {
          statusRequest = StatusRequest.loading;
          update();
          var response = await signUpRemoteController.getData(
            email.text,
            username.text,
            password.text,
          );
          statusRequest = handlingData(response);
          if (StatusRequest.success == statusRequest) {
            if (response['code'] == 0) {
              data.addAll(response['data']);
              Get.offNamed(AppNameScreen.signInScreen);
              myServicesController.getBox.write('Token', data['Token']);
            } else {
              Get.snackbar(
                '',
                '',
                backgroundColor: AppColor.primaryColor,
                titleText: const Text('Error'),
                messageText: Text(
                  response['message'],
                ),
              );
              statusRequest = StatusRequest.failure;
            }
          }
          update();
        } catch (e) {
          Get.snackbar('Error', 'The login process has finished');
        }
      } else {
        Get.snackbar('Note', 'You must agree to the terms');
      }
    }
    update();
  }
//----------------------------------------------------------------

  @override
  void changeObscurePassword() {
    obscureTextShow = !obscureTextShow;
    update();
  }

//----------------------------------------------------------------

  @override
  void changeApprovalStandards() {
    approvalOfStandards = !approvalOfStandards;
    update();
  }

  Future<UserCredential?> signInWithGoogle() async {
    final _googleSignIn = GoogleSignIn();
    // _googleSignIn.disconnect().catchError((e, stack) {
    //   print(e);
    // });

    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

    // handling the exception when cancel sign in
    if (googleUser == null) return null;

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

//----------------------------------------------------------------
Future signOut() async {
  var result = await FirebaseAuth.instance.signOut();
  return result;
}
  @override
  void dispose() {
    email.dispose();
    username.dispose();
    password.dispose();
    super.dispose();
  }
}
