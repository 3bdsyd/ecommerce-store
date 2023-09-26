import 'package:ecommerce_store/view/widget/orders_history/items_order.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/orders_history/products_list.dart';
import '../widget/orders_history/title_back.dart';

class OrdersHistory extends StatelessWidget {
  const OrdersHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Column(
        children: [
          SizedBox(
            height: 12.h,
          ),
          TitleBack(
            title: 'Order History',
          ),
          SizedBox(
            height: 25.h,
          ),
          const ItemsOrder(),
          SizedBox(height: 20.h,),
          const ProductsList(),
        ],
      ),
    );
  }
}
