import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:submission_flutter_pemula/res/res_color.dart';
import 'package:submission_flutter_pemula/ui/dashboard/HomePage.dart';
import 'package:submission_flutter_pemula/ui/splash_screen/sliderPage.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int _currentPage = 0;
  PageController _controller = PageController();

  List<Widget> _pages = [
    SliderPage(
        title: "Fever",
        description:
            "He severity of COVID-19 symptoms can range from very mild to severe. Some people have no symptoms. People who are older or have existing chronic medical conditions.",
        image: "assets/images/Mask Group.png"),
    SliderPage(
        title: "Cough",
        description:
            "Such as heart or lung disease or diabetis, may be at higher risk of serious illness. This is similar to what is seen with other respiratory illnesses, such influenza.",
        image: "assets/images/Mask Group (2).png"),
    SliderPage(
        title: "Breathing Difficulty",
        description:
            "Contact your doctor or clinic right away if you have COVID-19 symptoms, you’ve been exposed to someone with COVID-19, or you live in or have traveled from an area with ongoing community spread of COVID-19..",
        image: "assets/images/Mask Group (3).png"),
  ];

  _onchanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            scrollDirection: Axis.horizontal,
            onPageChanged: _onchanged,
            controller: _controller,
            itemCount: _pages.length,
            itemBuilder: (context, int index) {
              return _pages[index];
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(_pages.length, (int index) {
                    return AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height: 10,
                        width: (index == _currentPage) ? 20 : 10,
                        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: (index == _currentPage)
                                ? Res.primaryColor
                                : Res.subText.withOpacity(0.5)));
                  })),
              InkWell(
                onTap: () {
                  if (_currentPage == (_pages.length - 1)) {
                    Get.off(HomePage());
                  } else {
                    _controller.nextPage(
                        duration: Duration(milliseconds: 800), curve: Curves.easeInOutQuint);
                  }
                },
                child: AnimatedContainer(
                  alignment: Alignment.center,
                  duration: Duration(milliseconds: 300),
                  height: 50,
                  width: (_currentPage == (_pages.length - 1)) ? 280 : 50,
                  decoration: BoxDecoration(
                      color: Res.primaryColor, borderRadius: BorderRadius.circular(50)),
                  child: (_currentPage == (_pages.length - 1))
                      ? Text(
                          "Next",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        )
                      : Icon(
                          Icons.navigate_next,
                          size: 50,
                          color: Colors.white,
                        ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Skip",
                style: TextStyle(
                  color: Res.primaryColor,
                  fontSize: 18,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ],
      ),
    );
  }
}
