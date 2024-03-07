import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false, //QUITAR EL LABEL SELECCIONADO
      showUnselectedLabels: false, //QUITAR EL LABEL QUE NO ESTA SELECCIONADO
      selectedItemColor: const Color.fromRGBO(255, 99, 165,1), //PONER COLOR AL ICONO SELECCIONADO
      backgroundColor: const Color.fromRGBO(55, 58, 80, 1), //FONDO DEL NAVIGATION
      unselectedItemColor: const Color.fromRGBO(112, 112, 141,1), //PONER COLOR A LOS ICONOS QUE NO ESTAN SELECCIONADOS
      currentIndex: 0, //PARA VER CUAL ICONO ESTA SELECCIONADO POR DEFECTO
      items:
      const [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month, size: 30,),
          label: 'Calendary',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart, size: 30,),
          label: 'Graphics',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, size: 30,),
          label: 'User',
        ),
      ]
    );
  }
}