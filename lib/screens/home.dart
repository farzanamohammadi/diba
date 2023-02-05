
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static const routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF9e777b),
        body: SafeArea(

          child: IntroductionScreen(

            globalBackgroundColor: Colors.brown[300],
            scrollPhysics: BouncingScrollPhysics(),
            pages: [
              PageViewModel(
                titleWidget: Text(
                  'دیبا',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                body: 'به اپلیکشن دیبا خوش آمدید',
                image: CircleAvatar(
                  backgroundImage: AssetImage('images/1.jpg'),
                  radius: 130,
                ),
              ),
              PageViewModel(
                titleWidget: Text(
                  'مدیریت اندازه گیری',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                body:
                '    دیگر برای اندازه گیری لباس نیازی نیست دنبال دفتر بگردید شما میتوانید با داشتن اپلیکشن خیاطی دیبا اندازه ها را د گوشی همراه خود داشته باشید و همیشه همراه تان باشد',
                image: CircleAvatar(
                  backgroundImage: AssetImage('images/2.jpg'),
                  radius: 130,
                ),
              ),
              PageViewModel(
                titleWidget: Text(
                  'اندازه گیری لباس ها',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                body:
                ' دیگر برای اندازه گیری لباس نیازی نیست دنبال دفتر بگردید شما میتوانید با داشتن اپلیکشن خیاطی دیبا اندازه ها را د گوشی همراه خود داشته باشید و همیشه همراه تان باشد   ',
                image: CircleAvatar(
                  backgroundImage: AssetImage('images/1.jpg'),
                  radius: 130,
                ),
              ),
            ],
            onDone: () {

            },
            onSkip: () {},
            showSkipButton: true,
            skip: Text(
              "skip",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color:Color(0xFF9e777b)),
            ),
            next: Icon(
              Icons.arrow_forward,
              color: Colors.grey,
            ),
            done: Text(
              "Done",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: Colors.black),
            ),
            dotsDecorator: DotsDecorator(
              size: Size.square(10.0),
              activeSize: Size(20.0, 10.0),
              color: Colors.black,
              activeColor: Colors.grey,
              spacing: EdgeInsets.symmetric(horizontal: 3.0),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
          ),
        ));
  }
}

