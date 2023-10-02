import 'package:ecommerce_store/core/constant/package_const.dart';

class SliderBodyText extends StatelessWidget {
  final int index;
  const SliderBodyText({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: StackBodyWidget(index: index),
        ),
        const CustomVertical(height: 20),
        Text(
          onBoardingList[index].bodyText,
          style: context.textTheme.bodyLarge!.copyWith(
            color: ColorConst.darkColor,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
