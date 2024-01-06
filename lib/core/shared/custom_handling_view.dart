import 'package:ecommerce_store/core/constants/app_package.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;

  const HandlingDataView({
    super.key,
    required this.statusRequest,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? LottieBuilder.asset(AppAnimation.loadingAnimation)
        : statusRequest == StatusRequest.offlinefailure
            ? LottieBuilder.asset(AppAnimation.loadingAnimation)
            : statusRequest == StatusRequest.serverfailure
                ? LottieBuilder.asset(AppAnimation.loadingAnimation)
                : statusRequest == StatusRequest.failure
                    ? LottieBuilder.asset(AppAnimation.loadingAnimation)
                    : widget;
  }
}
