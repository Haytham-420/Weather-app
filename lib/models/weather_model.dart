class WeatherModel {
  final String cityName;
  final String countryName;
  final double temperature;
  final String condition;
  final String currentIcon;
  final List<double> hourlyTemperatures;
  final List<String> hourlyIcons;
  final List<String> hourlyConditons;
  final List<String> dailyConditons;
  final List<String> dailyIcons;
  final List<double> dailyMaxTemperatures;
  final List<double> dailyMinTemperatures;
  final List<String> dailyDate;
  final double windSpeed;
  final double feelsLike;
  final double precip;
  final double uv;

  WeatherModel({
    required this.cityName,
    required this.countryName,
    required this.temperature,
    required this.condition,
    required this.currentIcon,
    required this.hourlyTemperatures,
    required this.hourlyIcons,
    required this.hourlyConditons,
    required this.dailyConditons,
    required this.dailyMaxTemperatures,
    required this.dailyMinTemperatures,
    required this.dailyDate,
    required this.windSpeed,
    required this.feelsLike,
    required this.precip,
    required this.uv,
    required this.dailyIcons,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      cityName: json['location']['name'],
      countryName: json['location']['country'],
      temperature: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      condition: json['forecast']['forecastday'][0]['day']['condition']['text'],
      windSpeed: json['current']['wind_kph'],
      currentIcon: json['forecast']['forecastday'][0]['day']['condition']
          ['icon'],
      feelsLike: json['current']['feelslike_c'],
      precip: json['current']['precip_mm'],
      uv: json['current']['uv'],
      hourlyTemperatures: [
        json['forecast']['forecastday'][0]['hour'][0]['temp_c'],
        json['forecast']['forecastday'][0]['hour'][1]['temp_c'],
        json['forecast']['forecastday'][0]['hour'][2]['temp_c'],
        json['forecast']['forecastday'][0]['hour'][3]['temp_c'],
        json['forecast']['forecastday'][0]['hour'][4]['temp_c'],
        json['forecast']['forecastday'][0]['hour'][5]['temp_c'],
        json['forecast']['forecastday'][0]['hour'][6]['temp_c'],
        json['forecast']['forecastday'][0]['hour'][7]['temp_c'],
        json['forecast']['forecastday'][0]['hour'][8]['temp_c'],
        json['forecast']['forecastday'][0]['hour'][9]['temp_c'],
        json['forecast']['forecastday'][0]['hour'][10]['temp_c'],
        json['forecast']['forecastday'][0]['hour'][11]['temp_c'],
        json['forecast']['forecastday'][0]['hour'][12]['temp_c'],
        json['forecast']['forecastday'][0]['hour'][13]['temp_c'],
        json['forecast']['forecastday'][0]['hour'][14]['temp_c'],
        json['forecast']['forecastday'][0]['hour'][15]['temp_c'],
        json['forecast']['forecastday'][0]['hour'][16]['temp_c'],
        json['forecast']['forecastday'][0]['hour'][17]['temp_c'],
        json['forecast']['forecastday'][0]['hour'][18]['temp_c'],
        json['forecast']['forecastday'][0]['hour'][19]['temp_c'],
        json['forecast']['forecastday'][0]['hour'][20]['temp_c'],
        json['forecast']['forecastday'][0]['hour'][21]['temp_c'],
        json['forecast']['forecastday'][0]['hour'][22]['temp_c'],
        json['forecast']['forecastday'][0]['hour'][23]['temp_c'],
      ],
      hourlyIcons: [
        json['forecast']['forecastday'][0]['hour'][0]['condition']['icon'],
        json['forecast']['forecastday'][0]['hour'][1]['condition']['icon'],
        json['forecast']['forecastday'][0]['hour'][2]['condition']['icon'],
        json['forecast']['forecastday'][0]['hour'][3]['condition']['icon'],
        json['forecast']['forecastday'][0]['hour'][4]['condition']['icon'],
        json['forecast']['forecastday'][0]['hour'][5]['condition']['icon'],
        json['forecast']['forecastday'][0]['hour'][6]['condition']['icon'],
        json['forecast']['forecastday'][0]['hour'][7]['condition']['icon'],
        json['forecast']['forecastday'][0]['hour'][8]['condition']['icon'],
        json['forecast']['forecastday'][0]['hour'][9]['condition']['icon'],
        json['forecast']['forecastday'][0]['hour'][10]['condition']['icon'],
        json['forecast']['forecastday'][0]['hour'][11]['condition']['icon'],
        json['forecast']['forecastday'][0]['hour'][12]['condition']['icon'],
        json['forecast']['forecastday'][0]['hour'][13]['condition']['icon'],
        json['forecast']['forecastday'][0]['hour'][14]['condition']['icon'],
        json['forecast']['forecastday'][0]['hour'][15]['condition']['icon'],
        json['forecast']['forecastday'][0]['hour'][16]['condition']['icon'],
        json['forecast']['forecastday'][0]['hour'][17]['condition']['icon'],
        json['forecast']['forecastday'][0]['hour'][18]['condition']['icon'],
        json['forecast']['forecastday'][0]['hour'][19]['condition']['icon'],
        json['forecast']['forecastday'][0]['hour'][20]['condition']['icon'],
        json['forecast']['forecastday'][0]['hour'][21]['condition']['icon'],
        json['forecast']['forecastday'][0]['hour'][22]['condition']['icon'],
        json['forecast']['forecastday'][0]['hour'][23]['condition']['icon'],
      ],
      hourlyConditons: [
        json['forecast']['forecastday'][0]['hour'][0]['condition']['text'],
        json['forecast']['forecastday'][0]['hour'][1]['condition']['text'],
        json['forecast']['forecastday'][0]['hour'][2]['condition']['text'],
        json['forecast']['forecastday'][0]['hour'][3]['condition']['text'],
        json['forecast']['forecastday'][0]['hour'][4]['condition']['text'],
        json['forecast']['forecastday'][0]['hour'][5]['condition']['text'],
        json['forecast']['forecastday'][0]['hour'][6]['condition']['text'],
        json['forecast']['forecastday'][0]['hour'][7]['condition']['text'],
        json['forecast']['forecastday'][0]['hour'][8]['condition']['text'],
        json['forecast']['forecastday'][0]['hour'][9]['condition']['text'],
        json['forecast']['forecastday'][0]['hour'][10]['condition']['text'],
        json['forecast']['forecastday'][0]['hour'][11]['condition']['text'],
        json['forecast']['forecastday'][0]['hour'][12]['condition']['text'],
        json['forecast']['forecastday'][0]['hour'][13]['condition']['text'],
        json['forecast']['forecastday'][0]['hour'][14]['condition']['text'],
        json['forecast']['forecastday'][0]['hour'][15]['condition']['text'],
        json['forecast']['forecastday'][0]['hour'][16]['condition']['text'],
        json['forecast']['forecastday'][0]['hour'][17]['condition']['text'],
        json['forecast']['forecastday'][0]['hour'][18]['condition']['text'],
        json['forecast']['forecastday'][0]['hour'][19]['condition']['text'],
        json['forecast']['forecastday'][0]['hour'][20]['condition']['text'],
        json['forecast']['forecastday'][0]['hour'][21]['condition']['text'],
        json['forecast']['forecastday'][0]['hour'][22]['condition']['text'],
        json['forecast']['forecastday'][0]['hour'][23]['condition']['text'],
      ],
      dailyConditons: [
        json['forecast']['forecastday'][0]['day']['condition']['text'],
        json['forecast']['forecastday'][1]['day']['condition']['text'],
        json['forecast']['forecastday'][2]['day']['condition']['text'],
      ],
      dailyIcons: [
        json['forecast']['forecastday'][0]['day']['condition']['icon'],
        json['forecast']['forecastday'][1]['day']['condition']['icon'],
        json['forecast']['forecastday'][2]['day']['condition']['icon'],
      ],
      dailyMaxTemperatures: [
        json['forecast']['forecastday'][0]['day']['maxtemp_c'],
        json['forecast']['forecastday'][1]['day']['maxtemp_c'],
        json['forecast']['forecastday'][2]['day']['maxtemp_c'],
      ],
      dailyMinTemperatures: [
        json['forecast']['forecastday'][0]['day']['mintemp_c'],
        json['forecast']['forecastday'][1]['day']['mintemp_c'],
        json['forecast']['forecastday'][2]['day']['mintemp_c'],
      ],
      dailyDate: [
        json['forecast']['forecastday'][0]['date'],
        json['forecast']['forecastday'][1]['date'],
        json['forecast']['forecastday'][2]['date'],
      ],
    );
  }
}
