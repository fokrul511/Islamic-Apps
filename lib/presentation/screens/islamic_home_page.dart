import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    // Ensure ScreenUtil is initialized
    ScreenUtil.init(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameImage(),
            const TimeAndDateWidgets(),
            SizedBox(height: 16.h),
            const PrayerTimeScreen(),
            SizedBox(height: 20.h),
            const SectionHeader(
              title: 'আল কুরআন সম্পর্কিত',
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.all(8.w),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: quranItems.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5.w,
                  mainAxisSpacing: 2.h,
                  childAspectRatio: (3.w / 1.h), // Adjust based on your design
                ),
                itemBuilder: (context, index) {
                  return QuranCard(
                    title: quranItems[index]['title'],
                    iconData: quranItems[index]['icon'],
                    onTap: () {},
                  );
                },
              ),
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
