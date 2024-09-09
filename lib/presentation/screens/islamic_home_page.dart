import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/data/quran_data_list.dart';
import 'package:untitled/presentation/screens/test.dart';
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
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: quranItems.length,
              itemBuilder: (context, index1) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       SectionHeader(
                        title: quranItems[index1].sectionName,
                      ),
                      SizedBox(height: 10.h),
                      Padding(
                        padding: EdgeInsets.all(8.w),
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: quranItems[index1].cardItems.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 5.w,
                            mainAxisSpacing: 2.h,
                            childAspectRatio: (3.w / 1.h),
                          ),
                          itemBuilder: (context, index2) {
                            return QuranCard(
                              title: quranItems[index1].cardItems[index2].title,
                              iconData: quranItems[index1].cardItems[index2].icon,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TestScreen(
                                        title: quranItems[index1].cardItems[index2].title),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}
