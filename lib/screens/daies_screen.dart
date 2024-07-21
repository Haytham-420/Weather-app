import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_flutter/cubits/get_current_weather_cubit/current_city_weather_cubit.dart';
import 'package:weather_app_flutter/models/weather_model.dart';

class DaiesScreen extends StatefulWidget {
  const DaiesScreen({super.key});

  @override
  State<DaiesScreen> createState() => _DaiesScreenState();
}

class _DaiesScreenState extends State<DaiesScreen> {
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
        title: const Text('Daily Forecast'),
      ),

      // body of daies screen
      body: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 3,
        separatorBuilder: (context, index) => const Divider(
          height: 20,
          thickness: 1,
          color: Colors.grey,
          endIndent: 20,
          indent: 20,
        ),
        itemBuilder: (context, index) {
          return ListTile(
            // condition icon
            leading: Image(
                image: NetworkImage(
                    'http:${currentCityWeather?.dailyIcons[index]}')),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // conditon text
                Text(
                  '${currentCityWeather?.dailyConditons[index]}',
                ),

                const SizedBox(
                  width: 20,
                ),

                // max tempreture
                const Icon(Icons.keyboard_arrow_up_sharp),
                Text(
                  '${currentCityWeather?.dailyMaxTemperatures[index]}°',
                ),

                // min temperture
                const Icon(Icons.keyboard_arrow_down_sharp),
                Text(
                  '${currentCityWeather?.dailyMinTemperatures[index]}°',
                ),
              ],
            ),

            // date
            trailing: Text(currentCityWeather!.dailyDate[index].toString()),
          );
        },
      ),
    );
  }
}
