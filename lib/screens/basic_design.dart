import 'package:flutter/material.dart';


class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          //LANDSCAPE
          const Image(image: AssetImage('assets/sunset.jpg')),

          //TITLE AND MORE
          const Title(),

          //BUTTON SECTION
          const ButtonSection(),

          const SizedBox(height: 20,),

          //DESCRIPTION
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: const Text('Nostrud veniam ex consequat amet deserunt eu aliquip velit exercitation anim velit ipsum irure. Anim anim minim nulla minim dolor. Amet amet adipisicing dolor deserunt irure in consequat. Sunt consectetur incididunt laborum consequat aliquip fugiat amet tempor nisi. Laborum do ex dolor nisi pariatur nisi consequat ex esse nostrud consequat aliqua commodo.'),
          )
        ],
      )
   );
  }
}


class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Column(
            crossAxisAlignment: CrossAxisAlignment.start, //THIS USE IN A COLUMN
            children: [
              Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.black45),)
            ],
          ),

          Row(
            children: [
              Icon(Icons.star, color: Colors.red,),
              Text('41')
            ],
          )
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          //CALL
          Column(
            children: [
              Icon(Icons.call, color: Colors.blue, size: 30,),
              SizedBox(height: 10,),
              Text('CALL', style: TextStyle(color: Colors.blue),)
            ],
          ),

          //ROUTE
          Column(
            children: [
              Icon(Icons.location_on, color: Colors.blue, size: 30,),
              SizedBox(height: 10,),
              Text('ROUTE', style: TextStyle(color: Colors.blue),),
            ],
          ),

          //SHARE
          Column(
            children: [
              Icon(Icons.share, color: Colors.blue, size: 30,),
              SizedBox(height: 10,),
              Text('SHARE', style: TextStyle(color: Colors.blue),),
            ],
          )
        ],
      ),
    );
  }
}