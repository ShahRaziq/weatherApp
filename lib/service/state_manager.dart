import 'package:hooks_riverpod/all.dart';
import 'package:wheame/models/weather_model.dart';
import 'package:wheame/service/api.dart';

final airData = FutureProvider<WeatherModel>((ref) async => fetchWeather());