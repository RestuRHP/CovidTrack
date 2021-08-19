import 'package:flutter/material.dart';
import 'package:submission_flutter_pemula/res/res_color.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Res.white,
        title: Center(
          child: Text(
            "COVID - 19",
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Res.black, fontSize: 18, fontFamily: "Poppins", fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 20.0, bottom: 10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildSquare("Total Cases", "360,524", "assets/images/Cases.png", Res.black,0),
                    _buildSquare(
                        "Recovered", "100,658", "assets/images/Recov.png", Res.recoveryColor,1),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildSquare("Active Cases", "244,375", "assets/images/ActivaCase.png", Res.black,2),
                    _buildSquare("Total Death", "15,491", "assets/images/death.png", Res.death,3),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 330,
                  decoration: BoxDecoration(
                    color: Res.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0),
                        blurRadius: 1.0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Ratio of Recovery",
                              style: TextStyle(
                                color: Res.black,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              "View Details",
                              style: TextStyle(
                                color: Res.subText,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 40,),
                        Image.asset("assets/images/graphic.png",height: 155,width: 155,),
                        SizedBox(height: 40,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.circle,color: Res.primaryColor,size: 9.0,),
                                    SizedBox(width: 5,),
                                    Text(
                                      "338,225",
                                      style: TextStyle(
                                        color: Res.black,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Affected",
                                  style: TextStyle(
                                    color: Res.black,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 1,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.circle,color: Res.subText,size: 9.0,),
                                    SizedBox(width: 5,),
                                    Text(
                                      "96,958",
                                      style: TextStyle(
                                        color: Res.black,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Recovered",
                                  style: TextStyle(
                                    color: Res.black,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                        // Icon(Icons.circle)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSquare(String title, String value, String image, Color color,int navigateId) {
    return Material(
      child: InkWell(
        onTap: (){

        },
        child: Container(
          width: MediaQuery.of(context).size.width * 2 / 4 - 16,
          height: 210,
          decoration: BoxDecoration(
            color: Res.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0),
                blurRadius: 1.0,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$title",
                  style: TextStyle(
                    color: Res.subText,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  ),
                ),
                Text(
                  "$value",
                  style: TextStyle(
                    color: color,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Center(
                        child: Image.asset(
                      "$image",
                      width: 124,
                      height: 50,
                    )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
