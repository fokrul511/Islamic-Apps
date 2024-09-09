import 'package:flutter/material.dart';
import 'package:untitled/data/section_1_list.dart';
import 'package:untitled/presentation/widgets/image_frame.dart';
import 'package:untitled/presentation/widgets/prayer_time.dart';
import 'package:untitled/presentation/widgets/quran_card_widgets.dart';
import 'package:untitled/presentation/widgets/section_header.dart';
import 'package:untitled/presentation/widgets/time_and_date_widgets.dart';

class IslamicHomePage extends StatefulWidget {
  const IslamicHomePage({super.key});

  @override
  State<IslamicHomePage> createState() => _IslamicHomePageState();
}

class _IslamicHomePageState extends State<IslamicHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 0.4;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameImage(),
            const TimeAndDateWidgets(),
            const SizedBox(height: 16),
            const PrayerTimeScreen(),
            const SizedBox(height: 20),
            const SectionHeader(
              title: 'আল কুরআন সম্পর্কিত',
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: quranItems.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 2,
                  childAspectRatio: itemWidth / itemHeight,
                ),
                itemBuilder: (context, index) {
                  return QuranCard(
                    title: quranItems[index]['title'],
                    iconData: quranItems[index]['icon'],
                    onTap: (){},
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
