

import 'package:flutter/material.dart';
import 'package:jipro/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Image.asset('lib/images/nike.png',height: 240,),

              Text('just do it',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              SizedBox(
                height: 30,
              ),

               Text('you can do what eve went , dont worry about any thin just ff',style: TextStyle(fontSize: 18,color: Colors.grey[600]),),

                SizedBox(
                height: 30,
              ),
               //buttom
               GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),)),
                 child: Container(
                  
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12)
                 
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Center(child: Text('shop now',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                  ),
                 ),
               )
          
            ],
          ),
        ),
      ),
    );
  }
}