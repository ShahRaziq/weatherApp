import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wheame/models/weather_model.dart';
import 'package:wheame/utils/enviroment.dart';

Future<WeatherModel> fetchWeather() async {
  final response = await http.get(urlApi +
      'v2/city?city=Jakarta&state=Jakarta&country=Indonesia&key=' +
      keyApi);

  if (response.statusCode == 200) {
    var res = json.decode(response.body);
    return WeatherModel.fromJson(res);
  } else {
    throw Exception('Ga dapet data');
  }
}
