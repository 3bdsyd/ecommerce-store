import 'package:ecommerce_store/core/constants/app_package.dart';

class SignUpCheckBoxWidget extends GetView<SignUpControllerImp> {
  const SignUpCheckBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpControllerImp>(
      builder: (_) => GestureDetector(
        onTap: () => controller.changeApprovalStandards(),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          alignment: Alignment.center,
          margin: EdgeInsets.only(right: 15.w),
          height: 20.w,
          width: 20.w,
          decoration: BoxDecoration(
            color: controller.approvalOfStandards
                ? AppColor.primaryColor
                : Colors.transparent,
            border: !controller.approvalOfStandards
                ? Border.all(color: AppColor.eighthColor)
                : null,
            borderRadius: BorderRadius.circular(5),
          ),
          child: controller.approvalOfStandards
              ? Icon(
                  Icons.check,
                  size: 15,
                  color: AppColor.whiteColor,
                )
              : null,
        ),
      ),
    );
  }
}
