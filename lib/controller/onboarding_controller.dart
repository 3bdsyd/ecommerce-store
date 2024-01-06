import 'package:ecommerce_store/core/constants/app_package.dart';

abstract class OnBoardingController extends GetxController {
  // Go to the next page
  void nextPage();

  // Change the current page
  void onChangePage(int value);

  // Get width measurement
  double measurementWidth(int index);

  // Get active measurement
  Color activeMeasurement(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  final PageController pageController = PageController();

  final MyServices myServicesController = Get.find();

  int currentPage = 0;

  @override
  void nextPage() {
    if (currentPage != onBoardingList.length - 1) {
      currentPage++;

      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );

      update();
    } else {
      Get.offAllNamed(AppNameScreen.signUpScreen);
      myServicesController.getBox.write('rankPage', '1');
    }
  }

//----------------------------------------------------------------

  @override
  void onChangePage(int value) {
    currentPage = value;
    update();
  }

//----------------------------------------------------------------

  @override
  double measurementWidth(int index) {
    if (currentPage == index) {
      return 25.w;
    } else if (currentPage - index == 1 || index - currentPage == 1) {
      return 15.w;
    } else {
      return 10.w;
    }
  }

//----------------------------------------------------------------

  @override
  Color activeMeasurement(int index) {
    return currentPage == index
        ? AppColor.primaryColor
        : AppColor.secondaryColor;
  }
}
