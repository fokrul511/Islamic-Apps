import 'package:flutter/material.dart';
import 'package:untitled/data/section_1_list.dart';
import 'package:untitled/presentation/widgets/quran_card_widgets.dart';

class CardSection extends StatelessWidget {
  const CardSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 0.4;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: quranItems.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 2,
          childAspectRatio: itemWidth/itemHeight,
        ),
        itemBuilder: (context, index) {
          return QuranCard(
            title: quranItems[index]['title'],
            iconData: quranItems[index]['icon'],
          );
        },

      ),
    );
  }
}

// List of Quran items

