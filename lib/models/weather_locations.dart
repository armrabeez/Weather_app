import 'package:flutter/material.dart';
import '../utils/api_utils.dart' as util;
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class WeatherLocation {
  Future<Map> getWeather(String appId, String city) async {
    String apiUrl =
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=${util.appId}';

    http.Response response = await http.get(apiUrl);
    return json.decode(response.body);
  }

  final String city;
  final String dateTime;
  final String tempareture;
  final String mintempareture;
  final String maxtempareture;
  final String weatherType;
  final String iconUrl;
  final int wind;
  final int rain;
  final int humidity;

  WeatherLocation({
    @required this.city,
    @required this.dateTime,
    @required this.tempareture,
    @required this.mintempareture,
    @required this.maxtempareture,
    @required this.weatherType,
    @required this.iconUrl,
    @required this.wind,
    @required this.rain,
    @required this.humidity,
  });
}

final locationList = [
  WeatherLocation(
    city: 'Colombo',
    dateTime: 'Friday, January 14, 2022',
    tempareture: '33\u2103',
    mintempareture: '28\u2103',
    maxtempareture: '38\u2103',
    weatherType: 'clear',
    iconUrl: 'images/clear_icon.png',
    wind: 20,
    rain: 40,
    humidity: 70,
  ),
  WeatherLocation(
    city: 'Jaffna',
    dateTime: 'Friday, January 14, 2022',
    tempareture: '20\u2103',
    mintempareture: '15\u2103',
    maxtempareture: '25\u2103',
    weatherType: 'heavyrain',
    iconUrl: 'images/heavyrain_icon.png',
    wind: 50,
    rain: 50,
    humidity: 60,
  ),
  WeatherLocation(
    city: 'Negombo',
    dateTime: 'Friday, January 14, 2022',
    tempareture: '16\u2103',
    mintempareture: '11\u2103',
    maxtempareture: '21\u2103',
    weatherType: 'thunderstorm',
    iconUrl: 'images/thunderstorm_icon.png',
    wind: 10,
    rain: 20,
    humidity: 70,
  ),
  WeatherLocation(
    city: 'Mumbai',
    dateTime: 'Friday, January 14, 2022',
    tempareture: '27\u2103',
    mintempareture: '22\u2103',
    maxtempareture: '32\u2103',
    weatherType: 'heavycloud',
    iconUrl: 'images/heavycloud_icon.png',
    wind: 15,
    rain: 16,
    humidity: 90,
  ),
  WeatherLocation(
    city: 'Tokyo',
    dateTime: 'Friday, January 14, 2022',
    tempareture: '10\u2103',
    mintempareture: '5\u2103',
    maxtempareture: '15\u2103',
    weatherType: 'snow',
    iconUrl: 'images/snow_icon.png',
    wind: 13,
    rain: 10,
    humidity: 45,
  ),
  WeatherLocation(
    city: 'Kandy',
    dateTime: 'Friday, January 14, 2022',
    tempareture: '22\u2103',
    mintempareture: '17\u2103',
    maxtempareture: '27\u2103',
    weatherType: 'showers',
    iconUrl: 'images/showers_icon.png',
    wind: 22,
    rain: 40,
    humidity: 75,
  ),
  WeatherLocation(
    city: 'Galle',
    dateTime: 'Friday, January 14, 2022',
    tempareture: '25\u2103',
    mintempareture: '20\u2103',
    maxtempareture: '30\u2103',
    weatherType: 'sleet',
    iconUrl: 'images/sleet_icon.png',
    wind: 30,
    rain: 10,
    humidity: 73,
  ),
  WeatherLocation(
    city: 'Ampara',
    dateTime: 'Friday, January 14, 2022',
    tempareture: '28\u2103',
    mintempareture: '23\u2103',
    maxtempareture: '33\u2103',
    weatherType: 'lightrain',
    iconUrl: 'images/lightrain_icon.png',
    wind: 30,
    rain: 40,
    humidity: 50,
  ),
];
