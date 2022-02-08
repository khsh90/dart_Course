import '../bin/weatherdata.dart';
import 'dart:io';

Future<void> main(List<String> argument) async {
  try {
    if (argument.length != 1) {
      print('Sentax:dart bin\\main.dart <city>');
      return;
    }
    final city = argument.first;
    final metaWeather = getWeatherData();
    final cityWeather = await metaWeather.getWeatherDataFromFetch(city);

    print(cityWeather);
  } on SocketException catch (_) {
    print('Check your internet Connection');
  } on WeatherAPIErrorException catch (e) {
    print(e.message);
  } catch (e) {
    print(e);
  }
}
