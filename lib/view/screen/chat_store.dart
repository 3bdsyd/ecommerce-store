import 'package:ecommerce_store/view/widget/information_personal/data_messages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/information_personal/sender_messages.dart';
import '../widget/orders_history/title_back.dart';

class ChatStore extends StatelessWidget {
  const ChatStore({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 12.h,
              ),
              TitleBack(
                title: 'Chat With Store',
                chatScreen: true,
              ),
              SizedBox(
                height: 25.h,
              ),
              const DataMessages(),
              const SenderMessages(),
            ],
          ),
        ),
      ),
    );
  }
}
