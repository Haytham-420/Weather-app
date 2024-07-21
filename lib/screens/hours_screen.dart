import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_flutter/cubits/get_current_weather_cubit/current_city_weather_cubit.dart';
import 'package:weather_app_flutter/models/weather_model.dart';

class HoursScreen extends StatefulWidget {
  const HoursScreen({super.key});

  @override
  State<HoursScreen> createState() => _HoursScreenState();
}

class _HoursScreenState extends State<HoursScreen> {
  WeatherModel? currentCityWeather;

  @override
  void initState() {
    super.initState();
    currentCityWeather = BlocProvider.of<CurrentCityWeatherCubit>(context)
        .getCurrentCityWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar
      appBar: AppBar(
        title: const Text('Hourly Forecast'),
      ),

      // body of hourly screen
      body: ListView.separated(
        itemCount: 24,
        separatorBuilder: (context, index) => const Divider(
          height: 20,
          thickness: 1,
          color: Colors.grey,
          endIndent: 20,
          indent: 20,
        ),
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image(
                image: NetworkImage(
                    'http:${currentCityWeather?.hourlyIcons[index]}')),
            title: Center(
              child: Text(
                "${currentCityWeather?.hourlyTemperatures[index]}°    ${currentCityWeather?.hourlyConditons[index]}",
              ),
            ),
            trailing: Text(index < 10 ? "0$index:00" : "$index:00"),
          );
        },
      ),
    );
  }
}
