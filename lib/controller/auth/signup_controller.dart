import 'package:ecommerce_store/core/constant/package_const.dart';

abstract class SignUpController extends GetxController {
  void getData();
  void changeObscureText();
  void changeApprovalStandards();
}

class SignUpControllerImp extends SignUpController {
//----------------------------------------------------------------

  @override
  void onInit() {
    user.bindStream(_auth.authStateChanges());
    email = TextEditingController();
    username = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

//----------------------------------------------------------------

  @override
  void dispose() {
    email.dispose();
    username.dispose();
    password.dispose();
    super.dispose();
  }

  SignUpRemote signUpRemoteController = SignUpRemote(Get.find());
  final MyServices myServicesController = Get.find();

//----------------------------------------------------------------

  final GlobalKey<FormState> globalKeySignUp = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController username;
  late TextEditingController password;

//----------------------------------------------------------------

  bool obscureTextShow = true;
  bool approvalOfStandards = true;

//----------------------------------------------------------------

  Map<String, dynamic> data = {};

  late StatusRequest statusRequest = StatusRequest.none;

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
              Get.offNamed(ScreenNames.signInScreen);
              myServicesController.getBox.write('Token', data['Token']);
            } else {
              Get.snackbar(
                '',
                '',
                backgroundColor: ColorConst.primaryColor,
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
  void changeObscureText() {
    obscureTextShow = !obscureTextShow;
    update();
  }

//----------------------------------------------------------------

  @override
  void changeApprovalStandards() {
    approvalOfStandards = !approvalOfStandards;
    update();
  }

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  Rx<User?> user = Rx<User?>(null);

//----------------------------------------------------------------

  Future<void> registerWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      final UserCredential userCredential =
          await _auth.signInWithCredential(credential);
      print('111111111111111111111111');
      final User? user = userCredential.user;
      print('dfsdf');
      if (user != null) {
        // Send a verification email to the user's account.
        await user.sendEmailVerification();

        Get.snackbar(
            'Success', 'Registration successful! Verification email sent.');
      }
    } catch (e) {
      print(e);
      Get.snackbar('Error', 'Registration failed.');
    }
  }

  Future<void> signOut() async {
    statusRequest = StatusRequest.loading;
    update();
    await _auth.signOut();
    await _googleSignIn.signOut();
    statusRequest = StatusRequest.success;
    Get.snackbar('Success', 'You have successfully logged out');
    update();
  }
}
