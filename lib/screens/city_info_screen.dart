import 'package:flutter/material.dart';
import 'package:weather_app_flutter/models/weather_model.dart';

class CityInfoScreen extends StatelessWidget {
  const CityInfoScreen({super.key, required this.weatherModel});
  final WeatherModel? weatherModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WeatherForecast'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            //  city name
            Text(
              weatherModel!.cityName,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            // country name
            Text(
              weatherModel!.countryName,
              style: const TextStyle(fontSize: 18),
            ),

            // condition icon
            Image(image: NetworkImage('http:${weatherModel?.currentIcon}')),

            // condition text
            Column(
              children: [
                Text(
                  weatherModel!.condition,
                  style: const TextStyle(fontSize: 18),
                ),
                Text(
                  '${weatherModel!.temperature.toString()}°',
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 24,
              shrinkWrap: true,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image(
                      image: NetworkImage(
                          'http:${weatherModel?.hourlyIcons[index]}')),
                  title: Center(
                    child: Text(
                      "${weatherModel?.hourlyTemperatures[index]}°    ${weatherModel?.hourlyConditons[index]}",
                    ),
                  ),
                  trailing: Text(index < 10 ? "0$index:00" : "$index:00"),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
