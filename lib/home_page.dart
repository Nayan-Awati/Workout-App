import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart' as color;

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: EdgeInsets.only(top:70, left: 30, right: 30),
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
            SizedBox(height: 30,),

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
                Icon(Icons.arrow_forward_sharp,
                size: 20,
                color: color.AppColor.homePageIcons)
              ],
              )
            ,
            SizedBox(height: 30,),
            
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
            SizedBox(height: 20,),



          
          ],
        ),

      ),
    );
  }
}