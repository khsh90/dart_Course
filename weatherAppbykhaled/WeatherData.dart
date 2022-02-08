import 'dart:convert';

import 'package:http/http.dart' as http;
import 'Weather.dart';

class ErrorAPIException implements Exception {
  String msg;

  ErrorAPIException(this.msg);
}

class WeatherData {
  static const baseUrl = 'https://www.metaweather.com/api';

  Future<int> getCityId(String city) async {
    final url = Uri.parse('$baseUrl/location/search/?query=$city');

    final apiResponse = await http.get(url);

    if (apiResponse.statusCode != 200) {
      throw Exception('cant get the city id for :$city');
    }

    final responseDate = json.decode(apiResponse.body) as List;

    if (responseDate.isEmpty) {
      throw ErrorAPIException('The requsted City not avaliable for :$city');
    }
    return responseDate.first['woeid'] as int;
  }

  Future<Weather> fetchWeatherData(int cityId) async {
    final url = Uri.parse('$baseUrl/location/$cityId');

    final response = await http.get(url);
    if (response.statusCode != 200) {
      throw Exception('issue of getting CityId:$cityId');
    }

    final jsonResponse = json.decode(response.body);

    //print(jsonResponse['consolidated_weather'][0]);

    return Weather.fromJson(jsonResponse['consolidated_weather'][0]);
  }

  Future<Weather> getWeatherData(String city) async {
    final cityId = await getCityId(city);

    return fetchWeatherData(cityId);
  }
}
