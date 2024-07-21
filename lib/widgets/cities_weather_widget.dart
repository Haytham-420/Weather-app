import 'package:flutter/material.dart';
import 'package:weather_app_flutter/models/weather_model.dart';
import 'package:weather_app_flutter/screens/city_info_screen.dart';

class CitiesWeatherWidget extends StatelessWidget {
  const CitiesWeatherWidget({
    super.key,
    required this.weatherModels,
  });

  final List<WeatherModel>? weatherModels;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
      shrinkWrap: true,
      itemCount: weatherModels!.length,
      separatorBuilder: (context, index) => const Divider(
        height: 20,
        thickness: 1,
        color: Colors.grey,
        endIndent: 20,
        indent: 20,
      ),
      itemBuilder: (context, index) {
        final weatherModel = weatherModels![index];
        return ListTile(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    CityInfoScreen(weatherModel: weatherModel),
              )),
          // condition icon
          leading:
              Image(image: NetworkImage('http:${weatherModel.currentIcon}')),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // condition text
              Text(
                weatherModel.condition,
              ),

              const SizedBox(
                width: 20,
              ),

              Text(
                '${weatherModel.temperature}°',
              ),
            ],
          ),
          trailing: Text(
            weatherModel.cityName,
          ),
        );
      },
    ));
  }
}
