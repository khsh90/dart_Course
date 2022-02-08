import 'dart:convert';

class Weathrt {
  final String weather_state_name;
  final double max_temp;
  final double min_temp;
  final double wind_speed;
  final int humidity;

  Weathrt({
    required this.weather_state_name,
    required this.max_temp,
    required this.min_temp,
    required this.wind_speed,
    required this.humidity,
  });

  factory Weathrt.fromJson(Map<String, Object?> weatherDataMap) => Weathrt(
        weather_state_name: weatherDataMap['weather_state_name'] as String,
        max_temp: weatherDataMap['max_temp'] as double,
        min_temp: weatherDataMap['min_temp'] as double,
        wind_speed: weatherDataMap['wind_speed'] as double,
        humidity: weatherDataMap['humidity'] as int,
      );

  @override
  String toString() {
    return ''' 
    Weather: $weather_state_name
    Max Temprature:${max_temp.toStringAsFixed(2)}
    Min Temprature:${min_temp.toStringAsFixed(2)}
    Humidity:$humidity''';
  }
}
