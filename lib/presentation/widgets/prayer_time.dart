import 'package:flutter/material.dart';
import 'package:untitled/presentation/utility/apps_colors.dart';

class PrayerTimeScreen extends StatelessWidget {
  const PrayerTimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Background container
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          decoration: const BoxDecoration(
            color: AppColors.primaryColor,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Prayer times row
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  PrayerTimeItem(timeName: 'ফজর', time: '05:15 am'),
                  PrayerTimeItem(timeName: 'যোহর', time: '05:15 pm'),
                  PrayerTimeItem(timeName: 'আসর', time: '05:15 pm'),
                  PrayerTimeItem(timeName: 'মাগরিব', time: '05:15 pm'),
                  PrayerTimeItem(timeName: 'ঈশা', time: '05:15 pm'),
                ],
              ),
              const SizedBox(height: 20),
              // Countdown text
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: const BoxDecoration(
                  color: Colors.black, // Black background for the countdown
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: const Text(
                  textAlign: TextAlign.center,
                  'পরবর্তী নামাজ 02 ঘন্টা 08 মিনিট',
                  style: TextStyle(
                    color: Colors.amber, // Amber text color
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PrayerTimeItem extends StatelessWidget {
  final String timeName;
  final String time;

  const PrayerTimeItem({super.key, required this.timeName, required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          timeName,
          style: const TextStyle(
            color: Colors.amber,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          time,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
