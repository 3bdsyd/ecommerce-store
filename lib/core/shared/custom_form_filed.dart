import 'package:ecommerce_store/core/constants/app_package.dart';

class CustomFormField extends StatelessWidget {
  final String hinText;
  final String imagePrefix;
  final String label;
  final TextEditingController controller;
  final String? imageSuffix;
  final bool? obscureText;
  final Function(String value) validator;

  const CustomFormField({
    super.key,
    required this.hinText,
    required this.imagePrefix,
    required this.validator,
    required this.controller,
    required this.label,
    this.imageSuffix,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: controller,
          validator: (value) => validator(value!),
          cursorWidth: 1,
          cursorColor: AppColor.thirdColor,
          style: context.textTheme.labelLarge!.copyWith(
            color: AppColor.thirdColor,
          ),
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
            label: Text(
              label,
              style: context.textTheme.labelLarge,
            ),
            hintText: hinText,
            hintStyle: context.textTheme.labelLarge!.copyWith(
              color: AppColor.thirdColor.withOpacity(.3),
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(10),
              child: SvgPicture.asset(
                imagePrefix,
              ),
            ),
            suffixIcon: imageSuffix != null
                ? GestureDetector(
                    // onTap: signUpController.changeObscureText,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: SvgPicture.asset(
                        imageSuffix!,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  )
                : null,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColor.thirdColor,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColor.thirdColor,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColor.primaryColor,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}
