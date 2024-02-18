import 'package:ecommerce_store/core/constants/app_package.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class SignUpController extends GetxController {
  // Control showing and hiding the password
  void changeObscurePassword();

  // Agree to the terms of use of the applications
  void changeApprovalStandards();

  //
  Future<void> signInWithGoogle();
}

class SignUpControllerImp extends SignUpController {
  bool obscureTextShow = true;

  @override
  void changeObscurePassword() {
    obscureTextShow = !obscureTextShow;
    update();
  }

//----------------------------------------------------------------
  bool approvalOfStandards = false;

  @override
  void changeApprovalStandards() {
    approvalOfStandards = !approvalOfStandards;
    update();
  }

//----------------------------------------------------------------

  final SignUpData signUpData = SignUpData(Get.find());
  final MyServices myServices = Get.find();

  final GlobalKey<FormState> signUpKeyForm = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  StatusRequest statusRequest = StatusRequest.none;

  Future<void> submitSignUp() async {
    Get.dialog(
      LottieBuilder.asset(AppAnimation.loadingAnimation),
    );
    print(email.text);
    print(password.text);

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
      Get.back();

      // Handle successful user creation, e.g., navigate to the home page
      // Navigator.pushReplacementNamed(context, '/home');
    } on FirebaseAuthException catch (e) {
      Get.back();

      String errorMessage = 'An error occurred during sign up.';

      if (e.code == 'weak-password') {
        errorMessage =
            'The password provided is too weak. Please choose a stronger password.';
      } else if (e.code == 'email-already-in-use') {
        errorMessage =
            'An account already exists for the provided email address. Please sign in or use a different email.';
      } else {
        // Handle other FirebaseAuthExceptions
        errorMessage =
            'An unexpected error occurred during sign up. Please try again.';
      }

      customSnackBar(title: 'Error', message: errorMessage);
    } catch (_) {
      customSnackBar(
          title: 'Error',
          message:
              'An unexpected error occurred during sign up. Please try again.');
    }
  }

//----------------------------------------------------------------

  final GoogleSignIn googleSignIn = GoogleSignIn();

  @override
  Future<void> signInWithGoogle() async {
    Get.dialog(
      LottieBuilder.asset(AppAnimation.loadingAnimation),
    );

    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

      // Check if googleUser is not null
      if (googleUser == null) {
        Get.back();
        customSnackBar(title: 'notice', message: 'Google login canceled.');
        return;
      }

      // Obtain the auth details from the request
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      Get.back();

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Once signed in, return the UserCredential
      await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (error) {
      // Handle other exceptions

      Get.back();
      customSnackBar(title: 'notice', message: 'An error occurred. Please');
    }
  }

//----------------------------------------------------------------

  final FacebookAuth facebookLogin = FacebookAuth.instance;

  Future<void> signInWithFacebook() async {
    try {
      // Trigger the sign-in flow
      final LoginResult loginResult = await facebookLogin.login();

      if (loginResult.status == LoginStatus.success) {
        // Check if accessToken is not null
        if (loginResult.accessToken != null) {
          // Create a credential from the access token
          final OAuthCredential facebookAuthCredential =
              FacebookAuthProvider.credential(loginResult.accessToken!.token);

          // Once signed in, return the UserCredential
          await FirebaseAuth.instance
              .signInWithCredential(facebookAuthCredential);
        } else {
          // Handle case where accessToken is null
          customSnackBar(
              title: 'notice',
              message: 'Facebook login failed. Please try again.');
        }
      } else {
        // Handle case where login status is not success
        customSnackBar(
            title: 'notice',
            message: 'Facebook login failed. Please try again.');
      }
    } catch (error) {
      Get.back();
      // Handle other exceptions
      customSnackBar(
          title: 'notice', message: 'An error occurred. Please try again.');
    }
  }

//----------------------------------------------------------------

  @override
  void dispose() {
    email.dispose();
    username.dispose();
    password.dispose();
    super.dispose();
  }
}
