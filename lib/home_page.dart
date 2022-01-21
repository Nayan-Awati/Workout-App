import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:video_player_app/video_info.dart';
import 'colors.dart' as color;
import 'video_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List info = [];

  _initData(){
    DefaultAssetBundle.of(context).loadString("json/info.json").then((value){
      info = json.decode(value);
    });

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: EdgeInsets.only(top:70, left: 30, right: 30),
        //main 
        child: Column(
          children: [
            Row(
              children: [
                Text("Training",
                    style: TextStyle( 
                      fontSize: 30,
                      color: color.AppColor.homePageTitle,
                      fontWeight: FontWeight.w700
                    ),
                ),
                Expanded(child: Container()),
                Icon(Icons.arrow_back_ios,
                color: color.AppColor.homePageIcons,
                size: 20,),
                SizedBox(width: 15,),

                Icon(Icons.calendar_today_outlined,
                color: color.AppColor.homePageIcons,
                size: 20,),
                SizedBox(width: 20,),
                Icon(Icons.arrow_forward_ios,
                color: color.AppColor.homePageIcons,
                size: 20,)

              ],
            )
            ,
            SizedBox(height: 20,),

            Row( 
              children: [
                Text("Your Program",
                style: TextStyle(
                  fontSize: 20,
                  color: color.AppColor.homePageSubtitle,
                  fontWeight: FontWeight.w500
                ),),
                Expanded(child: Container()),
                Text("Details",
                style: TextStyle(
                  color: color.AppColor.homePageDetail,
                  fontSize: 20,
                  // fontWeight: FontWeight.w300
                ),)
                ,
                SizedBox(width: 5,),
                InkWell(
                  onTap: () {
                    Get.to(()=>VideoInfo());
                  },
                  child: Icon(Icons.arrow_forward_sharp,
                  size: 20,
                  color: color.AppColor.homePageIcons),
                )
              ],
              )
            ,
            SizedBox(height: 20,),

            Container( 
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    color.AppColor.gradientFirst.withOpacity(0.8),
                    color.AppColor.gradientSecond.withOpacity(0.9),

                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.centerRight
                  
                ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(80)

                  ),
                  boxShadow: [BoxShadow(
                    offset: Offset(10,10),
                    color: color.AppColor.gradientSecond.withOpacity(0.4),
                    blurRadius: 20
                  )]
              ),
              child: Container(
                padding: EdgeInsets.only(top:25, left: 20, right: 20 ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: [
                    Text("Next workout",
                    style: TextStyle(
                      color: color.AppColor.homePageContainerTextSmall,
                      fontSize: 15,
                      
                    ),),
                    SizedBox(height: 5,),
                    Text("Leg Toning",
                    style: TextStyle(
                      color: color.AppColor.homePageContainerTextBig,
                      fontSize: 25,
                      
                    ),),
                    SizedBox(height: 5,),
                    Text("and Glutes Workout",
                    style: TextStyle(
                      color: color.AppColor.homePageContainerTextBig,
                      fontSize: 25,
                      
                    ),),

                    SizedBox(height:25),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.timer, size: 15, color: color.AppColor.homePageContainerTextSmall,),
                            SizedBox(width: 5,),
                            Text("30 mins",
                            style: TextStyle(
                              color: color.AppColor.homePageContainerTextBig,
                              fontSize: 15,
                              
                            ),),
                          ],
                        ),
                        Expanded(child: Container()),
                        Container(
                          
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            boxShadow:[
                               BoxShadow(color: color.AppColor.gradientFirst.withOpacity(0.5),
                                  blurRadius: 10,
                                  offset: Offset(4,8))
                            ]
                          ),
                          child: Icon(
                            Icons.play_circle_fill, 
                            size: 60,
                            color: Colors.white
                          ),
                        )

                      ],
                    )
                  ],
                ),
              ),
            
            ),
            SizedBox(height: 5,),

            Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    height: 120,
                    margin: EdgeInsets.only(top: 30),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: AssetImage(
                        "assets/card.jpg",
                        
                      ),
                      fit: BoxFit.fill
                      ),
                      boxShadow: [
                        
                        BoxShadow(
                          color: color.AppColor.gradientSecond.withOpacity(0.3),
                          offset: Offset(8,10 ),
                          blurRadius: 40,
                        ),
                        BoxShadow(
                          color: color.AppColor.gradientSecond.withOpacity(0.3),
                          offset: Offset(-1,-5),
                          blurRadius: 10,
                        )
                      ],
                    ),
                  ),
                  
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(right: 200, bottom: 30, left: 10),
                    decoration: BoxDecoration(
                      // color: Colors.red.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(
                          "assets/figure.png",
                        ),
                      ),
                    ),
                  
                  ),
                  
                  Container(
                    height: 100,
                    width: double.maxFinite,
                    margin: const EdgeInsets.only(left: 150, top: 50,right: 10),
                    // color: Colors.red.withOpacity(0.3),
                    
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You are doing great",
                          style: TextStyle(
                            fontSize: 17,
                            color: color.AppColor.homePageDetail ,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 15,),
                        RichText(text: TextSpan(
                          text: "Keep it up\n",
                          style: TextStyle(
                            color: color.AppColor.homePagePlanColor,
                            fontSize: 15
                          ),
                          children: [
                            TextSpan(
                              text: "stick to your plan"
                            )
                          ]
                        ))
                      ],
                    ),
                  )
          
                ],
              ),
            )
            ,
            Row(
              children:[
                Text("Area of Focus",
                style: TextStyle(
                  color: color.AppColor.homePageTitle,
                  fontSize: 25,
                  fontWeight: FontWeight.w500
                ),
                )
              ]
            ),  

            Expanded(child: OverflowBox(
              maxWidth: MediaQuery.of(context).size.width,
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                  // itemCount: (info.length/2).toInt()  ,
                  itemCount: info.length ~/ 2,
                  itemBuilder: (_, i){
                    int a = 2*i;
                    int b = 2*i+1;
                    return Row(
                      children: [
                        Container(
                          height: 170,
                          width: (MediaQuery.of(context).size.width-90)/2,
                          margin: EdgeInsets.only(left: 30, right: 30, bottom: 15, top:15),
                          padding: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            // color: Colors.white,
                            color: Colors.white,
                            image: DecorationImage(image: 
                            AssetImage(info[a]["img"]),
                            // fit: BoxFit.fill
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 20,
                                offset: Offset(5,5),
                                color: color.AppColor.gradientSecond.withOpacity(0.1)
                              ),
                              BoxShadow(
                                blurRadius: 10,
                                offset: Offset(-5,-5),
                                color: color.AppColor.gradientSecond.withOpacity(0.1)
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Center(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(info[a]["title"] ,
                                style: TextStyle( 
                                  fontSize: 20,
                                  color: color.AppColor.homePageDetail
                                ),
                              ),
                            ),
                          ),
                        )
                        ,
                        // SizedBox(height: 20,),
                        Container(
                          height: 170,
                          width: (MediaQuery.of(context).size.width-90)/2,
                          margin: EdgeInsets.only(right: 30, bottom: 15, top:15  ),
                          padding: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            // color: Colors.white,
                            color: Colors.white,
                            image: DecorationImage(image: 
                            AssetImage(info[b]["img"]),
                            // fit: BoxFit.fill
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 20,
                                offset: Offset(5,5),
                                color: color.AppColor.gradientSecond.withOpacity(0.1)
                              ),
                              BoxShadow(
                                blurRadius: 10,
                                offset: Offset(-5,-5),
                                color: color.AppColor.gradientSecond.withOpacity(0.1)
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Center(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(info[b]["title"] ,
                                style: TextStyle( 
                                  fontSize: 20,
                                  color: color.AppColor.homePageDetail
                                ),
                              ),
                            ),
                          ),
                        )
                      
                      ],
                    );
                  }),
              ),
            )
            ),




          
          ],
        ),

      ),
    );
  }
}