import 'package:flutter/material.dart';


class ScrollScreen extends StatelessWidget {
  const ScrollScreen({super.key});

  final boxDecoration = const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.5,0.5],
      colors: [
        Color(0xff78ebcb),
        Color(0xff52c1db)
        ]
      )
    );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
           children: const [
             Screen1(),
             Screen2(),
          ],
        ),
      )
    );
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        //BACKGROUND IMAGE
        Background(),

        //MAIN TEXT
        MainText(),
      ],
    );
  }
}

class MainText extends StatelessWidget {
  const MainText({super.key});

  @override
  Widget build(BuildContext context) {

    const textStyle = TextStyle(fontSize: 50,fontWeight: FontWeight.bold, color: Colors.white);

    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('11°', style: textStyle),
          const Text('Miércoles', style: textStyle),
          //EXPANDED
          Expanded(child: Container()),
          const Icon(Icons.keyboard_arrow_down, size: 80, color: Colors.white,)
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff52c1db),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child:
      const Image(image: AssetImage('assets/scroll.png')
      )
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff52c1db),
      child: Center(
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xff00a3ff),
            shape: const StadiumBorder(),
            ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 70, vertical: 2),
            child: Text('Welcome', style: TextStyle(fontSize: 25, color: Colors.white),),
          ),
          ),
        ),
      );
    }
  }