import 'dart:ui';

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class CardTable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Table( // TABLE OF FORMAT
      children: const [
        //OPTIONS
        TableRow(
          children: [
            _SingleCard(icon: Icons.apps, color: Colors.lightBlueAccent, text: 'General',),
            _SingleCard(icon: Icons.directions_bus_rounded, color: Colors.deepPurpleAccent, text: 'Transport',),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.shopping_bag_rounded, color: Colors.pinkAccent, text: 'Shopping',),
            _SingleCard(icon: Icons.book_rounded, color: Colors.orangeAccent, text: 'Bills',),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.movie_outlined, color: Color.fromARGB(255, 27, 115, 187), text: 'Entertainment',),
            _SingleCard(icon: Icons.local_grocery_store, color: Color.fromARGB(255, 88, 199, 92), text: 'Grocery',),
          ]
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    required this.icon,
    required this.color,
    required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect( //PARA CORTAR CUALQUIER COSA QUE SE SALGA DEL CONTENEDOR
      borderRadius: BorderRadius.circular(30), //PARA HACER QUE EL BLUR NO SE SALGA DEL MARGEN DE LOS CARDS
        child: BackdropFilter( //EFECTO BORROSO EN LOS CARDS
          filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5),
          child: Container(
            // margin: const EdgeInsets.all(15),
            height: 180,
            decoration: BoxDecoration( //TRANSPARENT CARD
              borderRadius: BorderRadius.circular(30), // BORDER CARD
              color: const Color.fromRGBO(62, 66, 107, 0.7) // COLOR AND TRANSPARENT CARD
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, //ALIGN CARD
              children: [
                CircleAvatar( //CIRCLE COLOR
                  maxRadius: 30, //BORDER CIRCLE
                  backgroundColor: color,
                  child: Icon(icon, size: 30, color: Colors.white,), //ICONO INSIDE THE CARD
                ),
                const SizedBox(height: 10),
                Text(text, style: TextStyle(color: color, fontSize: 15),) //TEXT OF THE CARD
              ],
            ),
          ),
        ),
      ),
    );
  }
}