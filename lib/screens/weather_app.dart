import 'package:flutter/material.dart';
import 'package:weatherapp/widgets/single_weather.dart';
import 'package:weatherapp/models/weather_locations.dart';
import 'package:weatherapp/widgets/slider_dot.dart';
import 'package:transformer_page_view/transformer_page_view.dart';
import 'package:weatherapp/widgets/buildin_transform.dart';
import '../utils/api_utils.dart';

class WeatherApp extends StatefulWidget {
  @override
  _WeatherAppState createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  int _currentPage = 0;
  String bgImg;

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (locationList[_currentPage].weatherType == 'clear') {
      bgImg = 'images/clear.png';
    } else if (locationList[_currentPage].weatherType == 'heavycloud') {
      bgImg = 'images/heavycloud.png';
    }else if (locationList[_currentPage].weatherType == 'lightrain') {
      bgImg = 'images/lightrain.png';
    }else if (locationList[_currentPage].weatherType == 'thunderstorm') {
      bgImg = 'images/thunderstorm.png';
    } else if (locationList[_currentPage].weatherType == 'snow') {
      bgImg = 'images/snow.png';
    } else if (locationList[_currentPage].weatherType == 'lightcloud') {
      bgImg = 'images/lightcloud.png';
    } else if (locationList[_currentPage].weatherType == 'sleet') {
      bgImg = 'images/sleet.png';
    } else if (locationList[_currentPage].weatherType == 'heavyrain') {
      bgImg = 'images/heavyrain.png';
    } else if (locationList[_currentPage].weatherType == 'showers') {
      bgImg = 'images/showers.png';
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Colors.transparent,
        elevation: 1,
        leading: IconButton(
          onPressed: () => debugPrint('Search'),
          icon: Icon(Icons.search, size: 30, color: Colors.white),
        ),

      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset(bgImg,
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity),
            Container(
              decoration: BoxDecoration(color: Colors.black38),
            ),
            Container(
              margin: EdgeInsets.only(top: 110, left: 17),
              child: Row(
                children: [
                  for (int i = 0; i < locationList.length; i++)
                    if (i == _currentPage) SliderDot(true) else SliderDot(false)
                ],
              ),
            ),
            TransformerPageView(
              scrollDirection: Axis.horizontal,
              transformer: ScaleAndFadeTransformer(),
              viewportFraction: 0.9,
              onPageChanged: _onPageChanged,
              itemCount: locationList.length,
              itemBuilder: (ctx, i) => SingleWeather(i),
            ),
          ],
        ),
      ),
    );
  }
}
