import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:irdtask/ChaptersPage/chapter_page.dart';

class SearchPage extends StatefulWidget{
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final item1 = [
    "Chapter",
    'Imam',
    'Tirmizi',
    'Bukhari',
    'Hadith',
  ];

  List<String> items = [
    "Ohi no",
    'Writer',
    'Apps',
    'Skatch',
    'Hadith',
  ];

  List<String> filteredItem1 = [];

  List<String> filteredItem2 = [];

  List<String> filteredItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                top: 5,
                left: 4,
                right: 4,
              ),
              child: SizedBox(
                height: 60,
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      filteredItem1 = item1
                          .where((item) =>
                          item.toLowerCase().contains(value.toLowerCase()))
                          .toList();
                    });
                    setState(() {
                      filteredItems = items
                          .where((item) =>
                          item.toLowerCase().contains(value.toLowerCase()))
                          .toList();
                    });
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.teal,
                    prefixIcon: Icon(Icons.search_rounded),
                    hintText: "Searching item ",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
            ),
            Expanded(
              child:
              GestureDetector(
                onTap: () {
                  Get.to(() => ChapterPage());
                },
                child: ListView.builder(
                  itemCount: filteredItems.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(filteredItems[index]),
                      leading: Icon(
                        (Icons.search_rounded),
                      ),
                    );
                  },
                ),
              ),
            ),
            Expanded(
              child:
              GestureDetector(
                onTap: () {
                  Get.to(() => ChapterPage());
                },
                child: ListView.builder(
                  itemCount: filteredItem1.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(filteredItem1[index]),
                      leading: Icon(
                        (Icons.search_rounded),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
