import 'package:ecommerce_store/core/constants/app_package.dart';

class FromFieldChosePayment extends StatelessWidget {
  const FromFieldChosePayment(
      {super.key, required this.hint, required this.date});
  final String hint;
  final bool date;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorWidth: 1,
      cursorColor: AppColor.thirdColor,
      style: context.textTheme.labelSmall,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: context.textTheme.labelLarge!
            .copyWith(color: AppColor.thirdColor, fontSize: 15),
        contentPadding: EdgeInsets.only(
          top: 10.h,
          bottom: 1.h,
          left: 0.h,
          right: 15.h,
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.thirdColor,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.thirdColor,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.thirdColor,
          ),
        ),
        suffixIcon: date
            ? Padding(
                padding: EdgeInsets.symmetric(vertical: 6.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      hint,
                      style: context.textTheme.labelLarge!
                          .copyWith(color: AppColor.thirdColor, fontSize: 15),
                    ),
                    SvgPicture.asset(AppIcon.imagesArrowLeftS),
                  ],
                ),
              )
            : null,
      ),
    );
  }
}
