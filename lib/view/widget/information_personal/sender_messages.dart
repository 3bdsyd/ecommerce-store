import 'package:ecommerce_store/core/constants/app_package.dart';

class SenderMessages extends StatelessWidget {
  const SenderMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Divider(
            color: AppColor.thirdColor,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Row(
            children: [
              SvgPicture.asset(AppIcon.imagesVoctorChat),
              SizedBox(
                width: 8.w,
              ),
              Expanded(
                child: TextField(
                  style: context.textTheme.labelLarge!.copyWith(
                    color: AppColor.thirdColor,
                  ),
                  decoration: InputDecoration(
                    hintText: 'iMessage',
                    hintStyle: context.textTheme.labelLarge!.copyWith(
                      color: AppColor.thirdColor.withOpacity(.3),
                    ),
                    contentPadding: const EdgeInsets.only(
                        left: 15, right: 15, top: 10, bottom: 10),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(10),
                      child: SvgPicture.asset(
                        AppIcon.imagesSendIcon,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          BorderSide(color: Colors.grey.withOpacity(.5)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          BorderSide(color: Colors.grey.withOpacity(.5)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          BorderSide(color: Colors.grey.withOpacity(.5)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
              SvgPicture.asset(AppIcon.imagesVectorChatTow),
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}
