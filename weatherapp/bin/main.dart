import '../bin/weatherdata.dart';

Future<void> main(List<String> argument) async {
  if (argument.length != 1) {
    print('Sentax:dart bin\\main.dart <city>');
    return;
  }
  final city = argument.first;
  final metaWeather = getWeatherData();
  final cityId = await metaWeather.getWeatherId(city);

  print(cityId);
}
