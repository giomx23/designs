import 'package:flutter/material.dart';

import 'package:designs/widgets/background.dart';
import 'package:designs/widgets/card_table.dart';
import 'package:designs/widgets/custom_bottom_navigation.dart';
import 'package:designs/widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [

          //BACKGROUND BODY
          Background(),

          //HOMEBODY
          _HomeBody()


        ],
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [

          //TITLES
          PageTitle(),

          const SizedBox(height: 10),

          //CARD TABLE
          CardTable(),


        ],
      ),
    );
  }
}