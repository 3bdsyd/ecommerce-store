import 'package:ecommerce_store/core/constants/app_package.dart';
import 'package:ecommerce_store/view/widget/category/home_details.dart';
import '../../../controller/home_controller.dart';

class DetailsWidget extends GetView<HomeControllerImp> {
  const DetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: GestureDetector(
        onTap: dialogWidget,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
          height: 43.h,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColor.thirdColor.withOpacity(.8),
                blurRadius: 10,
              ),
            ],
            color: AppColor.thirdColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: SvgPicture.asset(
            AppIcon.imageVectorEdit,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }

  void dialogWidget() {
    Get.generalDialog(
      pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
      ) {
        return Column(
          children: [
            Expanded(
              child: Container(
                color: AppColor.secondaryColor.withOpacity(.2),
              ),
            ),
            Expanded(
              flex: 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const HomeDetails(),
              ),
            ),
          ],
        );
      },
    );
  }
}
