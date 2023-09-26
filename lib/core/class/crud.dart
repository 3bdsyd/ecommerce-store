import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ecommerce_store/core/class/status_request.dart';
import 'package:http/http.dart' as http;

import '../fuctions/check_internet.dart';

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkUrl, Map data) async {
    if (await checkInternet()) {
      var response = await http.post(
        Uri.parse(linkUrl),
        body: jsonEncode(data),
        headers: {
          'Content-Type': 'application/json',
        },
      );
      // print(response.statusCode);
      if (response.statusCode == 200 || response.statusCode == 201) {
        Map responseBody = jsonDecode(response.body);
        // print(responseBody);
        return Right(responseBody);
      } else {
        // print(response.statusCode);
        return const Left(StatusRequest.serverfailure);
      }
    } else {
      return const Left(StatusRequest.offlinefailure);
    }
  }
}
