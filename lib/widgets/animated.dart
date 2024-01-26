import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedText'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(animatedTexts: 
              [
                TypewriterAnimatedText('Komal Sharma',textStyle: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),speed: Duration(milliseconds: 100))
              ],
              totalRepeatCount: 4,
              pause: Duration(milliseconds: 200),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            AnimatedTextKit(animatedTexts: 
              [
                 RotateAnimatedText('Hello',textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.red),),
                 RotateAnimatedText('Beautiful',textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  RotateAnimatedText('World',textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
              ],
              // totalRepeatCount: 4,
              // pause: Duration(milliseconds: 200),
              // displayFullTextOnTap: true,
              // stopPauseOnTap: true,
            ),
            AnimatedTextKit(animatedTexts:[ WavyAnimatedText('Hello World',textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)), WavyAnimatedText('Hello World',textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),],)
          ],
        ),
      ),
    );
  }
}