import 'dart:convert';

import 'package:http/http.dart' as http;

class getWeatherData {
  static const metaWeatherURL = 'https://www.metaweather.com/api';

  Future<int> getWeatherId(String city) async {
    final weatherURL =
        Uri.parse('$metaWeatherURL/location/search/?query=$city');
    final meataWeatherResponse = await http.get(weatherURL);

    if (meataWeatherResponse.statusCode != 200) {
      throw Exception('Ivalid for get cityId:$city');
    }
    final metaWeatherdata = jsonDecode(meataWeatherResponse.body) as List;

    return metaWeatherdata.first['woeid'] as int;
  }
}
