import './WeatherData.dart';
import 'dart:io';

Future<void> main(List<String> args) async {
  try {
    if (args.length != 1) {
      print('Sentax:dart main.dart <city>');
      return;
    }
    final city = args.first;

    final api = WeatherData();
    final cityInfo = await api.getWeatherData(city);

    print(cityInfo);
  } on ErrorAPIException catch (e) {
    print(e.msg);
  } on SocketException catch (_) {
    print('Check your internet Connection');
  }
}
