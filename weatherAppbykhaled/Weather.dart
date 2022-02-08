class Weather {
  final String weather_state_name;
  final double max_temp;
  final double min_temp;
  final int humidity;

  const Weather(
      {required this.weather_state_name,
      required this.max_temp,
      required this.min_temp,
      required this.humidity});

  factory Weather.fromJson(Map<String, Object?> jsonData) => Weather(
        weather_state_name: jsonData['weather_state_name'] as String,
        max_temp: jsonData['max_temp'] as double,
        min_temp: jsonData['min_temp'] as double,
        humidity: jsonData['humidity'] as int,
      );

  @override
  String toString() {
    return '''

Weather Status : $weather_state_name
Max Temprature : ${max_temp.toStringAsFixed(2)}
Min Temprature : ${min_temp.toStringAsFixed(2)}
Humidity :$humidity
''';
  }
}
