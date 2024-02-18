import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:ecommerce_store/core/constants/app_package.dart';

class Crud {
  final MyServices myServices = Get.find();
  final Map<String, String>? headers = {
    'content-type': 'application/json',
    'X-RapidAPI-Key': 'SIGN-UP-FOR-KEY',
    'X-RapidAPI-Host': 'user-auth2.p.rapidapi.com'
  };

  //A function through which data can be post and get
  Future<Either<StatusRequest, Map>> crud(
    final TypeRequest typeRequest,
    final String linkUrl, [
    final Map? body,
  ]) async {
    try {
      http.Response response;
      final String? token = myServices.getBox.read(AppText.token);

      headers?.addAllIf(token != null, {'Authorization': 'Bearer $token'});

      //Test the presence of an Internet connection
      if (!await checkInternet()) {
        customSnackBar(title: 'فشل', message: 'لا يوجد اتصال بالانترنت');
        return const Left(StatusRequest.offline);
      }

      if (TypeRequest.post == typeRequest) {
        print(body);
        response = await http.post(
          Uri.parse('https://user-auth2.p.rapidapi.com/token/getToken'),
          headers: headers,
          body: body,
        );
        print(headers);

      } else if (TypeRequest.get == typeRequest) {
        response = await http.get(
          Uri.parse(linkUrl),
          headers: headers,
        );
      } else if (TypeRequest.put == typeRequest) {
        response = await http.put(
          Uri.parse(linkUrl),
          headers: headers,
          body: body,
        );
      } else if (TypeRequest.patch == typeRequest) {
        response = await http.patch(
          Uri.parse(linkUrl),
          headers: headers,
          body: body,
        );
      } else {
        response = await http.delete(
          Uri.parse(linkUrl),
          headers: headers,
          body: body,
        );
      }
      print('statusBody');

      final int statusCode = response.statusCode;
      final String statusBody = response.body;
      final Map responseBody;
      print(statusBody);
      print(statusCode);

      //Test the status of the API connection
      if (statusCode == 200 || statusCode == 201) {
        responseBody = jsonDecode(statusBody);

        if (responseBody.containsKey('status')) {
          if (responseBody['status'] != 1) {
            return const Left(StatusRequest.failure);
          }
        }

        //Test if the operation was completed successfully
        if (responseBody.containsKey('message')) {
          final String message = responseBody['message'];
          customSnackBar(title: 'notice', message: message);
        }
        return Right(responseBody);
      } else if (statusCode == 401) {
        Get.reset();
        customSnackBar(title: 'notice', message: 'Please log in again');
      }
      customSnackBar(title: 'notice', message: 'failed, try again');
      return const Left(StatusRequest.failure);
    } catch (e) {
      customSnackBar(title: 'notice', message: 'Something went wrong');
      return const Left(StatusRequest.exception);
    }
  }
}
