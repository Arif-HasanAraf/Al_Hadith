import 'package:carousel_slider/carousel_slider.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:irdtask/ChaptersPage/chapter_page.dart';
import 'package:irdtask/OthersDirectory/goto_annimation.dart';
import 'package:irdtask/OthersDirectory/search_fanc.dart';
import 'package:irdtask/dummy.dart';

class HomePage extends StatelessWidget{
  var controller;
  var elevationStandard = 10.0;
  var Hadith = ["Sahih Muslim", "Bukhari", "Tirmizi", "Ibne Nasayi",];
  var Writer = ["Iman Bukhari", "Imam. Gazzali", "Ayesha R.", "Iman Ummul Amin" ];
  var HNumber = [7209, 9075, 6302, 7100];
  var ImageB = ["assets/iconImage/pol.png","assets/iconImage/pol1.png","assets/iconImage/pol2.png","assets/iconImage/pol.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/2.2,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.bottomCenter,
                fit: BoxFit.fitWidth,
                image: AssetImage("assets/iconImage/Union.png"),
              ),
              color:Colors.teal,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                SafeArea(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/iconImage/Menu.png"),
                          Text("Al Hadith", style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.w400),),
                          GestureDetector(
                            onTap: (){
                              Get.to(()=> SearchPage());
                            },
                              child: Image.asset("assets/iconImage/Search 1.png")),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 200.0,
                    aspectRatio: 16/9,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 8),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  ),
                  items:
                  [" “That which is lawful is clear, and that which is unlawful"
                      "  is also quite clear. Between these two is that which is "
                      "ambiguous, which most people do not know. One who avoids "
                      "the doubtful safeguards his faith and his honor.” \n\n   Riyadh-us-Salaheen, Hadith 588."
                      ,"O ye who believe! Do not squander one another’s wealth"
                      "in vanities, but let there be amongst you traffic and trade"
                      " by mutual good will. \n\n    The Holy Quran, 4:29 ",
                    " “There was a merchant who would lend to the people, and "
                        "whenever his debtor was in difficult circumstances, he would"
                        " say to his employees, ‘Forgive him so that God may forgive "
                        "us.’ So, God forgave him.” \n\n    Sahih Al-Bukhari, Volume 3, Hadith 292.",
                    "“Do not turn away a poor man…even if all you can give is half "
                        "a date. If you love the poor and bring them near you…God "
                        "will bring you near Him on the Day of Resurrection.” \n\n    Al-Tirmidhi, Hadith 1376.",].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                                color: Colors.transparent
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Text('$i', style: TextStyle(fontSize: 16.0, color: Colors.white),),
                            )
                        );
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          
          // overlaping Container Section
          Align(
            alignment: Alignment.center,
            child: Container(
            width: MediaQuery.of(context).size.width/1.1,
            height: MediaQuery.of(context).size.height/7,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Column(
                     children: [
                       Container(
                         width: 30,
                           height: 30,
                           child: Image.asset('assets/iconImage/clock 1.png',)),
                       SizedBox(height: 5,),
                       Text("Last", style: TextStyle(color: Colors.black45),),
                     ],
                   ),
                   GestureDetector(
                     onTap: (){
                       Get.to(()=> AnimatedPage());
                   },
                     child: Column(
                       children: [
                         Container(
                           width: 30,
                             height: 30,
                             child: Image.asset("assets/iconImage/paper-plane.png",)),
                         SizedBox(height: 5,),
                         Text("Go To", style: TextStyle(color: Colors.black45),),
                       ],
                     ),
                   ),
                    Column(
                      children: [
                        Container(
                            width: 30,
                            height: 30,
                            child: Image.asset("assets/iconImage/open-book.png",)),
                        SizedBox(height: 5,),
                        Text("Apps", style: TextStyle(color: Colors.black45),),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            width: 30,
                            height: 30,
                            child: Image.asset("assets/iconImage/healthcare.png",)),
                        SizedBox(height: 5,),
                        Text("Sadaqa", style: TextStyle(color: Colors.black45),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          //List Section
          Positioned(
            left: 20,
            top: MediaQuery.of(context).size.height/1.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("All Hadith Book", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400 ),),
                Container(
                  height: double.maxFinite,
                  width: MediaQuery.of(context).size.width,
                  child: GestureDetector(
                    onTap: (){
                      Get.to(()=>ChapterPage());
                    },
                    child: ListView.separated(
                    itemBuilder: (BuildContext context,index){
                      return Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,

                          ),
                          child: ListTile(
                              leading: Image.asset(ImageB[index].toString()),
                              subtitle: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text((Hadith[index].toString()), style: TextStyle(fontSize: 18),),
                                      SizedBox(height: 5,),
                                      Text(Writer[index].toString()),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(HNumber[index].toString(), style: TextStyle(fontSize: 18),),
                                      SizedBox(height: 5,),
                                      Text("Hadith"),
                                    ],
                                  ),
                                ],
                              )
                          ),
                        ),
                      );

                    },
                    separatorBuilder: (BuildContext context,index){
                      return Divider(color: Colors.white,);

                    },
                    itemCount: Hadith.length),
                  ),
                ),
              ],
            ),

          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: StyleProvider(
          style: BottomBarStyle(),
          child: BottomNavigationBar(
            elevation: elevationStandard,
            // currentIndex: controller.currentIndex.value = 1,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.greenAccent,
            type: BottomNavigationBarType.fixed,
            items: [
              _tabItem("", "assets/iconImage/Home.png"),
              _tabItem("", "assets/iconImage/book-alt.png"),
              _tabItem("", "assets/iconImage/Vector.png"),
              _tabItem("", "assets/iconImage/Save.png"),
              _tabItem("","assets/iconImage/profile.png"),
            ],
            onTap: (position) => controller.changeTabPosition(position),
          ),
        ),
      ),
    );
  }

}

BottomNavigationBarItem _tabItem(String title, String icon) =>
    BottomNavigationBarItem(
      label: title,
      icon: Image.asset(
        icon,
        // colorFilter: const ColorFilter.mode(Colors.pink, BlendMode.srcIn),
      ),
    );