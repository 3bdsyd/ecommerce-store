import 'package:ecommerce_store/core/constants/app_package.dart';
import '../../../controller/home_controller.dart';

class ChoseColorWidget extends GetView<HomeControllerImp> {
  const ChoseColorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          6,
          (index) => Expanded(
            child: Obx(
              () => GestureDetector(
                onTap: () {
                  controller.myColor(index);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: controller.colorsList[index],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  height: 40.h,
                  margin: EdgeInsets.symmetric(horizontal: 2.h),
                  child: index == controller.currentColor.value
                      ? SvgPicture.asset(
                          AppIcon.fromFieldImagePasswordRecovery,
                        )
                      : Container(
                          width: 0,
                        ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
