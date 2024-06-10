import 'dart:convert';
import 'dart:developer';

import 'package:multiflex_store_01/const/const.dart';
import 'package:http/http.dart' as http;
import 'package:multiflex_store_01/model/model_rest_api.dart';

class ServicesApi {
  static Future<List<ProductModelApi>> getUrl() async {
    try {
      var url = Uri.parse(kProduct);
      //request to sever to get data
      final respone = await http.get(url);
      // convert json string to dart
      final data = jsonDecode(respone.body);
      // log("$data");
      return data
          .map<ProductModelApi>((e) => ProductModelApi.fromJson(e))
          .toList();
    } catch (e) {
      log("error:$e");
      return [];
    }
  }
}
