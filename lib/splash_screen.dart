import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:pro/homescreen.dart';
class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  AudioPlayer audioPlayer = AudioPlayer();
  late AudioCache audioCache;
  @override
   initState(){
    super.initState();
    audioPlayer.release();
     audioPlayer.play(AssetSource('audio1.mp3'));
       Timer(Duration(seconds: 25),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context){
                  audioPlayer.release();
                  return HomeScreen();
            }
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    final isWideth = MediaQuery.of(context).size.width <= 600;
    return Scaffold(
      appBar:isWideth? AppBar(
        title: Text(
          'تنويه هام جداً',
          style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600),
        ),
      ):
      AppBar(
        title: Text(
          'تنويه هام جداً',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
      ),
      body:isWideth?Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    child: Text(
                      'ماما العزيزة'
                          ' \nالأجهزة الذكية مهمة في حياتنا العملية وممكن أن تساعدنا بعملية التعليم ولكن ننصح بعدم أطالة الوقت عليها لأن لها مضار كثيره '
                          '\nمن المفيد جدا بعد الأنتهاء من التطبيق تعميم الفكرة في بيئتكم الجميلة',
                      style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  LottieBuilder.asset(
                    'assets/anim5.json',
                    height: 225.h,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: MaterialButton(
                        textColor: Colors.white,
                        color: Colors.blue,
                        height: 25.h,
                        onPressed: () {
                          audioPlayer.release();
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        },
                        child: Text(
                          "الصفحة الرئيسية ",
                          style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Container(
            child: Column(
              children: [
                Text(
                  'تم تصميم البرنامج بالتعاون بين ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Image(
                        image: AssetImage('assets/blumont.png'),
                        height: 75.h,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Expanded(
                      child: Image(
                        image: AssetImage('assets/unnamed.jpg'),
                        height: 75.h,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      )
          : Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  child: Text(
                    'ماما العزيزة'
                        ' \nالأجهزة الذكية مهمة في حياتنا العملية وممكن أن تساعدنا بعملية التعليم ولكن ننصح بعدم أطالة الوقت عليها لأن لها مضار كثيره '
                        '\nمن المفيد جدا بعد الأنتهاء من التطبيق تعميم الفكرة في بيئتكم الجميلة',
                    style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.w200),
                    textAlign: TextAlign.center,
                  ),
                ),
                LottieBuilder.asset(
                  'assets/anim5.json',
                  height: MediaQuery.of(context).size.height/3.25,
                  width: MediaQuery.of(context).size.width,
                ),


              ],
            ),
          ),
          Container(
             height: MediaQuery.of(context).size.height/14,
            width: MediaQuery.of(context).size.width/3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: MaterialButton(
                textColor: Colors.white,
                color: Colors.blue,
                onPressed: () {
                  audioPlayer.release();
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
                child: Text(
                  "الصفحة الرئيسية ",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w200,
                  ),
                )),
          ),
          Container(
            height: MediaQuery.of(context).size.height/4.5,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Text(
                  'تم تصميم البرنامج بالتعاون بين ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/8,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment:MainAxisAlignment.center ,
                    children: [
                      Image(
                        image: AssetImage('assets/blumont.png'),
                        fit: BoxFit.fill,
                        height: 250,

                      ),
                      Image(
                        image: AssetImage('assets/unnamed.jpg'),
                        fit: BoxFit.fill,
                        height: 500,

                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
