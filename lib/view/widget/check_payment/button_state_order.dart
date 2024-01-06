import 'package:ecommerce_store/core/constants/app_package.dart';

class ButtonStateOrder extends StatelessWidget {
  const ButtonStateOrder({super.key, required this.cancelOrder});
  final bool cancelOrder;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      child: ElevatedButton(
        onPressed: () {
          Get.toNamed(
            cancelOrder
                ? AppNameScreen.orderFailed
                : AppNameScreen.orderComplete,
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor:
              cancelOrder ? AppColor.secondaryColor : AppColor.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          cancelOrder ? 'Cancel Order' : 'Continue Order',
          overflow: TextOverflow.ellipsis,
          style: context.textTheme.labelLarge!.copyWith(fontSize: 18),
        ),
      ),
    );
  }
}
