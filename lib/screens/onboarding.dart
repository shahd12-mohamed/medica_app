import 'dart:async';
import 'package:flutter/material.dart';
import 'package:medica_app/screens/sign_in.dart';
import '../shared/shared.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 6), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> const Signin_Screen()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            const CircleAvatar(
              backgroundImage: AssetImage("assets/Medinova.png"),
              radius: 68,
            ),
            const SizedBox(height: 10,),

            InkWell(
              onTap: (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (ctx) => const Signin_Screen()));
              },
              child: mytext(
                  text: "Medica", siz: 60, col: const Color(0xff0B8FAC), font: FontWeight.w500, fontS: FontStyle.normal),
            )



          ],
        ),
      ),
    );
  }

}