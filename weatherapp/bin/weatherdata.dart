import 'dart:convert';
import './weather.dart';

import 'package:http/http.dart' as http;

class WeatherAPIErrorException implements Exception {
  String message;

  WeatherAPIErrorException(this.message);
}

class getWeatherData {
  static const metaWeatherURL = 'https://www.metaweather.com/api';

  Future<int> getWeatherId(String city) async {
    final weatherURL =
        Uri.parse('$metaWeatherURL/location/search/?query=$city');
    final meataWeatherResponse = await http.get(weatherURL);

    if (meataWeatherResponse.statusCode != 200) {
      throw WeatherAPIErrorException('Ivalid for get cityId:$city');
    }

    final metaWeatherdata = jsonDecode(meataWeatherResponse.body) as List;

    if (metaWeatherdata.isEmpty) {
      throw Exception('The city you entred is not avaliable:$city');
    }

    return metaWeatherdata.first['woeid'] as int;
  }

  Future<Weathrt> fetchWeather(int locationID) async {
    final WeatherURL = Uri.parse('$metaWeatherURL/location/$locationID');
    final weatherResponse = await http.get(WeatherURL);

    if (weatherResponse.statusCode != 200) {
      throw Exception('Faild to get the location:$locationID');
    }

    final weatherData = json.decode(weatherResponse.body);

    return Weathrt.fromJson(
      weatherData['consolidated_weather'][0],
    );
  }

  Future<Weathrt> getWeatherDataFromFetch(String city) async {
    final locationID = await getWeatherId(city);
    return fetchWeather(locationID);
  }
}
