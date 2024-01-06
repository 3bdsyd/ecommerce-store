import 'package:ecommerce_store/controller/home_controller.dart';
import 'package:ecommerce_store/core/constants/app_package.dart';

class RightCartWidget extends GetView<HomeControllerImp> {
  const RightCartWidget(this.index, {super.key});
final int index;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              controller.removeAllItemsFromCart(
                controller.myCategoryCart.keys.toList()[index].id,
              );
            },
            child: SvgPicture.asset(
              AppIcon.imageDeletedIcon,
              height: 20.h,
              width: 15.w,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  controller.removeItemsFromCart(
                      controller.myCategoryCart.keys.toList()[index].id);
                },
                child: SvgPicture.asset(
                  AppIcon.imageMinusIcon,
                  height: 4.h,
                  width: 15.w,
                ),
              ),
              Expanded(
                child: Text(
                  controller.myCategoryCart.values.toList()[index].toString(),
                  style: context.textTheme.titleLarge!.copyWith(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ),
              GestureDetector(
                onTap: () {
                  controller.addItemsToCart(
                      controller.myCategoryCart.keys.toList()[index].id);
                },
                child: SvgPicture.asset(
                  AppIcon.imagePlusIcon,
                  height: 11.h,
                  width: 15.w,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
