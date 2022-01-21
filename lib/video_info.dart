import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'colors.dart' as color;

class VideoInfo extends StatefulWidget {
  const VideoInfo({ Key? key }) : super(key: key);

  @override
  _VideoInfoState createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {


  List info = [];

  _initData(){
    DefaultAssetBundle.of(context).loadString("json/videoinfo.json").then((value){
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
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.AppColor.gradientFirst.withOpacity(0.9),
              color.AppColor.secondPageContainerGradient2ndColor
            ],
            begin: const FractionalOffset(0.0, 0.4),
            end: Alignment.topRight  
          )
        ),
        child: Column(
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(Icons.arrow_back_ios, size: 20, color: color.AppColor.secondPageIconColor,)),
                      Expanded(child: Container()),
                      Icon(Icons.info_outline, size: 20, color: color.AppColor.secondPageIconColor,),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Text("Leg Toning",
                    style: TextStyle(
                      color: color.AppColor.secondPageTitleColor,
                      fontSize: 25,
                    ),),
                  SizedBox(height: 5,),
                  Text("and Glutes Workout",
                  style: TextStyle(
                    color: color.AppColor.secondPageTitleColor,
                    fontSize: 25,
                  ),),
                  SizedBox(height: 50,),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container( 
                          height: 30,
                          width: 90,
                          
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                color.AppColor.secondPageContainerGradient1stColor,
                                color.AppColor.secondPageContainerGradient2ndColor
                              ],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight
                            ),
                            borderRadius: BorderRadius.circular(10),
                            
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.timer, color: color.AppColor.secondPageIconColor,size: 20,),
                              SizedBox(width: 5,),
                              Text("65 mins",
                              style: TextStyle(
                                fontSize: 16,
                                color: color.AppColor.secondPageIconColor
                              ),),
                            ],
                          ),
                        ),
                        // Expanded(child: Container()),
                        SizedBox(width: 10,),
                        Container(
                          height: 30,
                          width: 250,
                          
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                color.AppColor.secondPageContainerGradient1stColor,
                                color.AppColor.secondPageContainerGradient2ndColor
                              ],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight

                            ),
                            borderRadius: BorderRadius.circular(10),
                            
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.handyman_outlined, size: 20,color: color.AppColor.secondPageIconColor,),
                              SizedBox(width: 5,),
                              Text("Resistence band, Kettlebell",
                                style: TextStyle(
                                fontSize: 16,
                                color: color.AppColor.secondPageIconColor
                              ),),
                            ],
                          )
                        )
                      ],
                    )
                
                ],
                
              ),
            )
            // RichText(text: TextSpan())
            ,
            Expanded(child: Container(
              decoration: BoxDecoration(
                color: Colors.white, 
                borderRadius: BorderRadius.only(topRight: Radius.circular(80))
              ),
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Text("Circuit 1: Legs Toning",
                      style: TextStyle(
                        color: color.AppColor.circuitsColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),),
                      Expanded(child: Container()),

                      Icon(Icons.loop, size: 20, color: color.AppColor.loopColor,),
                      SizedBox(width: 5,),

                      Text("3 Sets",
                      style: TextStyle(
                        color: color.AppColor.setsColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w300
                      ),),
                      SizedBox(width: 25,)
                    ],
                  )
                ],
              ),
            )
            )
          ],
        ),
      ),
    );
  }
}