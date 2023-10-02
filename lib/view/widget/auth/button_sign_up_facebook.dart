// import 'package:ecommerce_store/core/constant/icon_const.dart';
// import 'package:ecommerce_store/core/constant/package_const.dart';

// class ButtonSignUpFacebook extends StatelessWidget {
//   const ButtonSignUpFacebook({
//     super.key,
//     required this.onPressed,
//   });
//   final Function() onPressed;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         const Divider(),
//         SizedBox(
//           height: 10.h,
//         ),
//         SizedBox(
//           height: 50.h,
//           width: double.infinity,
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: 10.w),
//             child: ElevatedButton(
//               onPressed: onPressed,
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: ColorConst.blueColor,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   SvgPicture.asset(
//                     IconConst.fromFieldImageFacebook,
//                     width: 28.w,
//                     fit: BoxFit.scaleDown,
//                   ),
//                   Text(
//                     'Connect with Facebook',
//                     style: context.textTheme.labelLarge!.copyWith(
//                       color: ColorConst.whiteColor,
//                     ),
//                   ),
//                   Container(),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         SizedBox(
//           height: 15.h,
//         ),
//       ],
//     );
//   }
// }
