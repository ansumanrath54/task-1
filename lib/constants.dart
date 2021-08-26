import 'package:flutter/material.dart';

Color textColor = Color(0xff3E67D6);
Color boxColor = Color(0xFFEFF3FF);

class TodayActivity {
  final String icon, title, count;

  TodayActivity({required this.icon, required this.count, required this.title});
}

List<TodayActivity> today = [
  TodayActivity(
    icon: "assets/images/trail-running-shoe (1).png",
    title: "STEPS",
    count: "1,228",
  ),
  TodayActivity(
    icon: "assets/images/weight.png",
    title: "CALORIES",
    count: "829",
  ),
  TodayActivity(
    icon: "assets/images/cardiogram (1).png",
    title: "BPM",
    count: "88.0",
  ),
];

class DailyActivity {
  final String day, date;

  DailyActivity({required this.day, required this.date});
}

List<DailyActivity> daily = [
  DailyActivity(day: "MON", date: "08"),
  DailyActivity(day: "SUN", date: "07"),
  DailyActivity(day: "SAT", date: "06"),
  DailyActivity(day: "FRI", date: "05"),
  DailyActivity(day: "THU", date: "04"),
  DailyActivity(day: "WED", date: "03"),
  DailyActivity(day: "TUE", date: "02"),
];
