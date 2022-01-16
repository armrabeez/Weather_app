// import 'package:flutter/material.dart';
// import '../utils/api_utils.dart' as util;
// import 'package:http/http.dart' as http;
// import 'dart:async';
// import 'dart:convert';

// class Weather {
//   String cityName;
//   double temp;
//   double feelsLike;
//   double wind;
//   int pressure;
//   int humidity;

//   Weather({
//     this.cityName,
//     this.temp,
//     this.feelsLike,
//     this.wind,
//     this.pressure,
//     this.humidity,
//   });

//   Weather.fromJson(Map<String, dynamic> json) {
//     cityName = json["name"];
//     temp = json["main"]["temp"];
//     wind = json["wind"]["speed"];
//     pressure = json["main"]["pressure"];
//     humidity = json["main"]["humidity"];
//     feelsLike = json["wind"]["feelsLike"];
//   }
// }
