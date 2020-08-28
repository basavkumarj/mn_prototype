import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:mn_prototype/models/apods_model.dart';
import 'package:mn_prototype/other/query_tags.dart';

class Utility {
  static Future<dynamic> getWithoutToken(String url) async {
    return await http
        .get(Uri.encodeFull(url))
        .then((http.Response response) {
          final int statusCode = response.statusCode;
          if (statusCode < 200 || statusCode > 400) {
            throw new Exception("Error while fetching data");
          }
          return json.decode(response.body);
        })
        .timeout(Duration(seconds: 10))
        .catchError((err) {
          throw err;
        });
  }

  static Future<ApodsModel> getOldApodsData(int pastCount) async {
    String url = Uri.https(QueryTags.NASA_API_BASE_URL, QueryTags.NASA_APODS_PATH, {
      QueryTags.qAPI_KEY: QueryTags.NASA_KEY,
      QueryTags.qDATE: DateFormat("y-MM-d")
          .format(DateTime.now().toUtc().subtract(Duration(days: pastCount)))
    }).toString();
    return ApodsModel.fromJsonMap(await getWithoutToken(url));
  }
}
