import 'package:ecommerce_store/core/constant/package_const.dart';

abstract class AuthController extends GetxController {
  showNote();
}

class AuthControllerImp extends AuthController {
  bool show = true;
  GlobalKey<FormState> formLogin = GlobalKey();
  final TextEditingController loginController = TextEditingController();
    late StatusRequest statusRequest = StatusRequest.none;
  @override
  void showNote() {
    show = false;
    update();
  }

  @override
  void onInit() {
    user.bindStream(_auth.authStateChanges());
    super.onInit();
  }

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  Rx<User?> user = Rx<User?>(null);

  Future<User?> signInWithGoogle() async {
    statusRequest = StatusRequest.loading;
    update();
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final UserCredential authResult =
          await _auth.signInWithCredential(credential);
      statusRequest = StatusRequest.success;
      update();
      final User? user = authResult.user;
      statusRequest = StatusRequest.success;
      Get.offNamed(ScreenNames.home);
      update();
      return user;
    } catch (error) {
      statusRequest = StatusRequest.failure;
      update();
      return null;
    }
  }

  Future<void> signOut() async {
    statusRequest = StatusRequest.loading;
    update();
    await _auth.signOut();
    await _googleSignIn.signOut();
    statusRequest = StatusRequest.success;
    update();
  }
}
