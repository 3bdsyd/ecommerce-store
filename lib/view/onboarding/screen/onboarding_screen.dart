import 'package:ecommerce_store/core/constant/package_const.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () => alertExitApp(context),
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: const Column(
              children: [
                Expanded(
                  flex: 6,
                  child: PageViewWidget(),
                ),
                Expanded(
                  flex: 1,
                  child: ButtonStarted(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
