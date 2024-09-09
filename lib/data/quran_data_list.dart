import 'package:flutter/material.dart';

final List<Section> quranItems = [
  // Section 1: Quran related
  Section(
    cardItems: [
      CardItem(title: 'আল কুরআন সূরাক্রমে', icon: Icons.book, onTap: () {}),
      CardItem(title: 'আল কুরআন পারাক্রমে', icon: Icons.library_books, onTap: () {}),
      CardItem(title: 'তাফসির', icon: Icons.menu_book, onTap: () {}),
      CardItem(title: 'গুরুত্বপূর্ণ আয়াত সমূহ', icon: Icons.collections_bookmark, onTap: () {}),
      CardItem(title: 'তাজবীদ', icon: Icons.front_hand, onTap: () {}),
      CardItem(title: 'পঠিতিভিত্তিক কুরআন', icon: Icons.bookmark, onTap: () {}),
    ],
    sectionName: 'আল কুরআন সম্পর্কিত',
  ),

  // Section 2: Namaz related
  Section(
    cardItems: [
      CardItem(title: 'নামাজের সময়সূচী', icon: Icons.access_time, onTap: () {}),
      CardItem(title: 'নামাজের নিয়মাবলি', icon: Icons.alarm, onTap: () {}),
      CardItem(title: 'আজান ও ইকামত', icon: Icons.mosque, onTap: () {}),
      CardItem(title: 'গুরুত্বপূর্ণ মাসআলা', icon: Icons.calendar_today, onTap: () {}),
      CardItem(title: 'কিবলা খুঁজুন', icon: Icons.search, onTap: () {}),
      CardItem(title: 'অন্যান্য', icon: Icons.more_horiz, onTap: () {}),
    ],
    sectionName: 'নামাজ সম্পর্কিত',
  ),

  // Section 3: Dua related
  Section(
    cardItems: [
      CardItem(title: 'নামাজের দোয়া সমূহ', icon: Icons.textsms, onTap: () {}),
      CardItem(title: 'সকাল সন্ধ্যা', icon: Icons.alarm, onTap: () {}),
      CardItem(title: 'রমজান-সিয়াম', icon: Icons.calendar_today, onTap: () {}),
      CardItem(title: 'ঈমান বৃদ্ধির দোয়া', icon: Icons.book, onTap: () {}),
      CardItem(title: 'ক্ষমা চাওয়ার দোয়া', icon: Icons.access_time, onTap: () {}),
      CardItem(title: 'অন্যান্য', icon: Icons.more_horiz, onTap: () {}),
    ],
    sectionName: 'দোয়া সম্পর্কিত',
  ),

  // Section 4: Hadith related
  Section(
    cardItems: [
      CardItem(title: 'সহিহ বুখারি', icon: Icons.book, onTap: () {}),
      CardItem(title: 'সহিহ মুসলিম', icon: Icons.book, onTap: () {}),
      CardItem(title: 'সুনানে আবু দাউদ', icon: Icons.book, onTap: () {}),
      CardItem(title: 'সুনানে আন নাসাঈ', icon: Icons.book, onTap: () {}),
      CardItem(title: 'সহিহ হাদিসে কুদসি', icon: Icons.book, onTap: () {}),
      CardItem(title: 'অন্যান্য', icon: Icons.more_horiz, onTap: () {}),
    ],
    sectionName: 'হাদিস সম্পর্কিত',
  ),

  // Section 5: App related
  Section(
    cardItems: [
      CardItem(title: 'বুকমার্ক', icon: Icons.bookmark, onTap: () {}),
      CardItem(title: 'নোটিফিকেশন', icon: Icons.notifications, onTap: () {}),
      CardItem(title: 'দান করুন', icon: Icons.money, onTap: () {}),
      CardItem(title: 'এবাউট', icon: Icons.info, onTap: () {}),
      CardItem(title: 'সেটিংস', icon: Icons.settings, onTap: () {}),
      CardItem(title: 'আরো আ্যাপ', icon: Icons.apps, onTap: () {}),
    ],
    sectionName: 'আ্যাপ সম্পর্কিত',
  ),
];


class Section {
  final List<CardItem> cardItems;
  final String sectionName;

  Section({
    required this.cardItems,
    required this.sectionName,
  });
}

class CardItem {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  CardItem({
    required this.title,
    required this.icon,
    required this.onTap,
  });
}
