import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'colors.dart' as color;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override 
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  List info = [];  

  void _initData() {
    DefaultAssetBundle.of(context)
        .loadString('json/info.json')
        .then((value) {
          json.decode(value);
      // Handle loaded JSON data here if needed
    });
  }

  @override
  void initState() {
    super.initState();
    _initData(); // You can initialize any data or state here if needed
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.appColor.homePageBackgraound,
      body: Container(
        padding: const EdgeInsets.only(top: 70.0, left: 30.0, right: 30.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Training",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: color.appColor.homePageTitle,
                  ),
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: color.appColor.homePageIcons,
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.calendar_today_outlined,
                  size: 20,
                  color: color.appColor.homePageIcons,
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: color.appColor.homePageIcons,
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text(
                  "Your Programe",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: color.appColor.homePageSubtitle,
                  ),
                ),
                Expanded(child: Container()),
                Text(
                  "Details",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: color.appColor.homePageDetail,
                  ),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward,
                  size: 20,
                  color: color.appColor.homePageIcons,
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    color.appColor.gradientFirst.withOpacity(0.8),
                    color.appColor.gradientSecond.withOpacity(0.9),
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                  topRight: Radius.circular(88.0),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(5, 10),
                    blurRadius: 20,
                    color: color.appColor.gradientSecond.withOpacity(0.2),
                  ),
                ],
              ),
              child: Container(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 20,
                  right: 20,
                  bottom: 5,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "next Workout",
                      style: TextStyle(
                        fontSize: 20,
                        //  fontWeight: FontWeight.bold,
                        color:
                            color
                                .appColor
                                .homePageContainerTextSmall, // Ensure this property exists in colors.dart
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Legs Toning",
                      style: TextStyle(
                        fontSize: 25,
                        //  fontWeight: FontWeight.bold,
                        color: color.appColor.homePageContainerTextSmall,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "and Glutes Workout",
                      style: TextStyle(
                        fontSize: 25,
                        //  fontWeight: FontWeight.bold,
                        color: color.appColor.homePageContainerTextSmall,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.timer,
                              size: 20,
                              color: color.appColor.homePageContainerTextSmall,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "  60 min",
                              style: TextStyle(
                                fontSize: 25,
                                color:
                                    color.appColor.homePageContainerTextSmall,
                              ),
                            ),
                          ],
                        ),
                        Expanded(child: Container()),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(4, 8),
                                blurRadius: 10,
                                color: Color.fromARGB(255, 7, 32, 120),
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.play_circle_fill,
                            size: 60,
                            color: color.appColor.homePageContainerTextSmall,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30.0),
              height: 180,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/card.png", // Ensure this image exists in your assets folder
                        ),
                        fit: BoxFit.fill,
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(8, 10),
                          blurRadius: 40,
                          color: color.appColor.gradientSecond.withOpacity(0.3),
                        ),
                        BoxShadow(
                          offset: Offset(-1, -5),
                          blurRadius: 10,
                          color: color.appColor.gradientSecond.withOpacity(0.3),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(
                      left: 20,
                      right: 200,
                      bottom: 70,
                      top: 0,
                    ),
                    decoration: BoxDecoration(
                      //color: Colors.redAccent.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/figure.png", // Ensure this image exists in your assets folder
                        ),
                        //fit: BoxFit.fill,
                      ),
                    ), // Transparent overlay for touch events
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    margin: const EdgeInsets.only(left: 150, top: 20),
                    //color: Colors.redAccent.withOpacity(0.2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " You are doing great",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: color.appColor.homePageDetail,
                          ),
                        ),
                        SizedBox(height: 10),
                        RichText(
                          text: TextSpan(
                            text: "  Keep it up!\n",
                            style: TextStyle(
                              fontSize: 16,
                              color: color.appColor.homePagePlanColor,
                            ),
                            children: [
                              TextSpan(
                                text: "  stick to your plan",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],

              ),
            ),
            Row(
              children: [
                Text(
                  "Areas of Focus",
                  //textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: color.appColor.homePageTitle,
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (_, i) {
                  return Row(
                    children: [
                      Container(
                        width: 200,
                        height: 170,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: AssetImage("assets/ex1.png"),
                          ),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(5, 5),
                              blurRadius: 3,
                              color: color.appColor.gradientSecond.withOpacity(0.1),
                            ),
                            BoxShadow(
                              offset: Offset(-5, -5),
                              blurRadius: 3,
                              color: color.appColor.gradientSecond.withOpacity(0.1),
                            ),
                          ]
                        ),
                        child: Center(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "glues",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: color.appColor.homePageDetail,
                              ),
                            ),
                          ),
                      ),),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
