import 'package:flutter/material.dart';
import 'package:jipro/components/navbar.dart';
import 'package:jipro/pages/cartpage.dart';
import 'package:jipro/pages/hhm.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedindex = 0;

   void bottomNavigationBar(int index){
    setState(() {
      _selectedindex = index;
    });
  }


  List<Widget> pages = [
    Hhm(),
    Cartpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyButtonnavBar(
        onTabChange: (index) => bottomNavigationBar(index),),
        body: pages[_selectedindex],
    );
    
  }
}