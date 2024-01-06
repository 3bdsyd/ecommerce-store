import 'package:ecommerce_store/core/constants/app_package.dart';

abstract class OtpController extends GetxController {
  //--------------- 
  void startTimer();
  //---------------
  void changeActive();
}

class OtpControllerImp extends OtpController {
  final RxInt timerSeconds = (5 * 60).obs;
  late Timer timer;
  late int timeActive = 1;
  final RxInt countDown = 60.obs;
  final RxBool isActive = false.obs;

//----------------------------------------------------------------

  @override
  void onReady() {
    startTimer();
    super.onReady();
  }

//----------------------------------------------------------------

  @override
  void startTimer() {
    Future.delayed(const Duration(seconds: 1), () {
      if (countDown.value > 0) {
        countDown.value--;
        startTimer();
      } else {
        isActive(true);
      }
    });
  }

//----------------------------------------------------------------

  @override
  void changeActive() {
    timeActive *= 2;
    countDown(timeActive * 60);
    isActive(false);
    startTimer();
  }
}
