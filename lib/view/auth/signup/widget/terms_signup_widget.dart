import 'package:ecommerce_store/core/constant/package_const.dart';

class TermsSignUpWidget extends GetView<SignUpControllerImp> {
  const TermsSignUpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GetBuilder<SignUpControllerImp>(
          builder: (_) => GestureDetector(
            onTap: () => controller.changeApprovalStandards(),
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(right: 15.w),
              height: 20.w,
              width: 20.w,
              decoration: BoxDecoration(
                border: Border.all(color: ColorConst.eighthColor),
                borderRadius: BorderRadius.circular(5),
              ),
              child: controller.approvalOfStandards
                  ? const Icon(
                      Icons.check,
                      size: 15,
                    )
                  : null,
            ),
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: 'By creating an account, you agree to our\n',
              style: context.textTheme.labelMedium,
              children: [
                TextSpan(
                  text: 'Term & Conditions',
                  style: context.textTheme.labelMedium!.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
