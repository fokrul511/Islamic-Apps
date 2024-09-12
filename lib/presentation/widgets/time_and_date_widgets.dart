import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:untitled/presentation/utility/apps_colors.dart';

class TimeAndDateWidgets extends StatefulWidget {
  const TimeAndDateWidgets({super.key});

  @override
  _TimeAndDateWidgetsState createState() => _TimeAndDateWidgetsState();
}

class _TimeAndDateWidgetsState extends State<TimeAndDateWidgets> {
  late String _currentTime;
  late String _currentDate;
  late String _hijriDate;
  String _currentLocation = "Loading...";
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _currentTime = _formatTime(DateTime.now());
    _currentDate = _formatDate(DateTime.now());

    // Fetch location and Hijri date
    _getHijriDate();
    _determinePosition();

    // Update the time every second
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      if (mounted) {
        setState(() {
          _currentTime = _formatTime(DateTime.now());
          _currentDate = _formatDate(DateTime.now());
        });
      }
    });
  }

  @override
  void dispose() {
    // Cancel the timer when the widget is disposed
    _timer?.cancel();
    super.dispose();
  }

  String _formatTime(DateTime time) {
    return DateFormat('h:mm a').format(time); // Format time like 12:15 PM
  }

  String _formatDate(DateTime date) {
    return DateFormat('EEEE, d MMMM').format(date); // Format date like Saturday, 25 February
  }

  Future<void> _getHijriDate() async {
    final hijriCalendar = HijriCalendar.now(); // Get current Hijri date
    if (mounted) {
      setState(() {
        _hijriDate = '${hijriCalendar.hDay} ${hijriCalendar.longMonthName}, ${hijriCalendar.hYear} AH';
      });
    }
  }

  Future<void> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Check if location services are enabled
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      if (mounted) {
        setState(() {
          _currentLocation = "Location disabled";
        });
      }
      return;
    }

    // Request permission for location
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        if (mounted) {
          setState(() {
            _currentLocation = "Location permissions are denied";
          });
        }
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      if (mounted) {
        setState(() {
          _currentLocation = "Location denied";
        });
      }
      return;
    }

    // Get the current position
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    // Get the human-readable address
    List<Placemark> placemarks = await placemarkFromCoordinates(
      position.latitude,
      position.longitude,
    );

    if (placemarks.isNotEmpty) {
      Placemark place = placemarks[0];
      if (mounted) {
        setState(() {
          _currentLocation = "${place.locality}, ${place.country}";
        });
      }
    } else {
      if (mounted) {
        setState(() {
          _currentLocation = "Location not found";
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      decoration: const BoxDecoration(color: AppColors.primaryColor),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _currentTime,
                  style: const TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w500,
                    color: AppColors.whiteColor,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.location_on_outlined, color: AppColors.whiteColor),
                    Text(
                      _currentLocation, // Display the dynamic location here
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _hijriDate, // Display the dynamic Hijri date here
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.whiteColor,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _currentDate,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
