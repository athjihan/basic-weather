import 'package:flutter_svg/svg.dart';
import 'package:basic_weather/services/network.dart';
import 'package:basic_weather/utilities/config.dart';

const openWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getCityWeather(String cityName) async {
    Network network = Network(
        url: '$openWeatherMapURL?q=$cityName&appid=$apiKey&units=metric');

    var weatherData = await network.getData();
    return weatherData;
  }

  SvgPicture getWeatherIcon(int condition) {
    if (condition < 300) {
      return SvgPicture.asset('assets/thunder.svg');
    } else if (condition < 600) {
      return SvgPicture.asset('assets/rain.svg');
    } else if (condition < 700) {
      return SvgPicture.asset('assets/snow.svg');
    } else if (condition < 800) {
      return SvgPicture.asset('assets/fog.svg');
    } else if (condition == 800) {
      return SvgPicture.asset('assets/sunny.svg');
    } else if (condition <= 804) {
      return SvgPicture.asset('assets/clouds.svg');
    } else {
      return SvgPicture.asset('assets/null.svg');
    }
  }
}
