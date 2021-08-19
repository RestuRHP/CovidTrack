
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:submission_flutter_pemula/res/res_color.dart';
import 'package:submission_flutter_pemula/ui/splash_screen/landing.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () => goToLanding());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              "assets/images/covid.png",
              width: 170,
            ),
            Text(
              'COVSTATS',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Res.primaryColor,
                  fontSize: 18,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }

  goToLanding() async {
      Get.off(Landing());
  }
}
