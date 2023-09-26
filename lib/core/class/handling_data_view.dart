import 'package:ecommerce_store/controller/signup_controller.dart';
import 'package:ecommerce_store/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'status_request.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView({
    Key? key,
    required this.statusRequest,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? const Center(child: Text('Loading...'))
        : statusRequest == StatusRequest.offlinefailure
            ? Center(
                child: GestureDetector(
                  onTap: () => Get.toNamed(
                    ScreenNames.signUpScreen,
                  ),
                  child: const Text('Offlinefailure'),
                ),
              )
            : statusRequest == StatusRequest.serverfailure
                ? const Center(child: Text('Serverfailure'))
                : statusRequest == StatusRequest.failure
                    ? const Center(child: Text('Failure'))
                    : widget;
  }
}

class HandlingDataRequest extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  HandlingDataRequest({
    Key? key,
    required this.statusRequest,
    required this.widget,
  }) : super(key: key);

  final SignUpControllerImp controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? const Center(child: Text('Loading...'))
        : statusRequest == StatusRequest.offlinefailure
            ? GetBuilder<SignUpControllerImp>(
                builder: (_) => Center(
                  child: GestureDetector(
                    onTap: () => controller.returnToPage(),
                    child: const Text('Try again'),
                  ),
                ),
              )
            : statusRequest == StatusRequest.serverfailure
                ? const Center(child: Text('Serverfailure'))
                : widget;
  }
}
