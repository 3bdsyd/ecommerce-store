import 'package:ecommerce_store/controller/home_controller.dart';
import 'package:ecommerce_store/core/constants/app_package.dart';

class ButtonAddProduct extends GetView<HomeControllerImp> {
  const ButtonAddProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      width: 120.w,
      child: ElevatedButton(
        onPressed: () {
          controller.addItemsToCart(controller.myDetailsProduct.id);
          controller.changeStatePaymentProduct(true);
          Get.toNamed(AppNameScreen.home);
          controller.changeCurrentPage(2);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Text(
          'Add to cart',
          style: TextStyle(
            fontFamily: 'SF Pro Text',
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
