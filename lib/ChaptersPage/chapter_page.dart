
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:irdtask/HomePage/home_section.dart';

class ChapterPage extends StatelessWidget{
    var count = [1, 2, 3, 4, 5, 6, 7, 8, 9 , 10];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 60,
                color: Colors.teal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(onPressed: (){
                            Get.to(()=>HomePage());

                          }, icon: Icon(Icons.arrow_back_ios, color: Colors.white,)),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Books Name", style: TextStyle(fontSize: 18, color: Colors.white),),
                              Text("7525 Hadith", style: TextStyle(fontSize: 14, color: Colors.white),),
                            ],
                          ),
                        ],
                      ),
                      Icon(Icons.remove_circle, color: Colors.white,)
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*2,
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                    margin: EdgeInsets.all(10),
                    width:double.maxFinite,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        border: Border.all(color: Colors.white30),
                        borderRadius: BorderRadius.circular(10)

                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "   Search y chapter",
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.search,color: Colors.greenAccent)
                      ),
                    ),
                  ),
                    Container(
                      height: double.maxFinite,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.separated(
                          padding: EdgeInsets.all(10),
                          itemBuilder: (BuildContext context,index){
                            return Padding(
                              padding: const EdgeInsets.only(right: 8, left: 8,),
                              child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: ListTile(
                                    leading: CircleAvatar(
                                      backgroundColor: Colors.teal,
                                        child: Text(count[index].toString())),
                                    subtitle: Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Subject name", style: TextStyle(fontSize: 18),),
                                            Text("Hadith 1 - 7",),
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
                          itemCount: count.length),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}

