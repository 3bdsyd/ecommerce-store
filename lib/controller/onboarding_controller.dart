import 'package:ecommerce_store/core/constant/package_const.dart';

abstract class OnBoardingController extends GetxController {
  // Go to the next page
  nextPage();

  // Change the current page
  onChangePage(int value);
}

class OnBoardingControllerImp extends OnBoardingController {
//----------------------------------------------------------------
  final MyServices myServicesController = Get.find();

  int currentPage = 0;

  late PageController pageController;

//----------------------------------------------------------------

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

//----------------------------------------------------------------

  @override
  void nextPage() {
    if (currentPage < onBoardingList.length - 1) {
      currentPage++;
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeIn,
      );
    } else {
      Get.offAllNamed(ScreenNames.signUpScreen);
      myServicesController.getBox.write('rankPage', '1');
    }
    update();
  }

//----------------------------------------------------------------

  @override
  onChangePage(int value) {
    currentPage = value;
    update();
  }
}
