import 'package:ecommerce_store/core/constants/app_package.dart';

class StoreGuarantee extends StatelessWidget {
  const StoreGuarantee({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(AppIcon.imagesCheckLine),
            SizedBox(
              width: 3.w,
            ),
            Text(
              'Original product',
              style: context.textTheme.labelMedium,
            ),
            const Spacer(),
            SvgPicture.asset(AppIcon.imagesHistoryLine),
            SizedBox(
              width: 3.w,
            ),
            Text(
              'Return of goods in 5 days',
              style: context.textTheme.labelMedium,
            )
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
        Row(
          children: [
            SvgPicture.asset(AppIcon.imagesPriceLine),
            SizedBox(
              width: 3.w,
            ),
            Text(
              'Voucher code available',
              style: context.textTheme.labelMedium,
            ),
            const Spacer(),
            SvgPicture.asset(AppIcon.imagesWalletLine),
            SizedBox(
              width: 3.w,
            ),
            Text(
              'Pay directly at your place',
              style: context.textTheme.labelMedium,
            )
          ],
        ),
      ],
    );
  }
}
