import 'package:flutter/material.dart';
import 'package:medica_app/screens/sign_up.dart';

import '../shared/shared.dart';
import 'home_medical.dart';

class Signin_Screen extends StatefulWidget {
  const Signin_Screen({super.key});

  @override
  State<Signin_Screen> createState() => _Signin_ScreenState();
}

class _Signin_ScreenState extends State<Signin_Screen> {
  TextEditingController nameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: mytext(
                      text: "Welcome",
                      siz: 26,
                      col: const Color(0xff0B8FAC),
                      font: FontWeight.w700,
                      fontS: FontStyle.normal)),

              const SizedBox(
                height: 20,
              ),
              // Spacer(flex: 2,),
              Align(
                alignment: Alignment.centerLeft,
                child: mytext(
                    text: "Sign in",
                    siz: 26,
                    col: Colors.black,
                    font: FontWeight.w700,
                    fontS: FontStyle.normal),
              ),
              const SizedBox(
                height: 10,
              ),
              // Spacer(flex: 1,),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: mytext(
                      text:
                          "Korem ipsum dolor sit amet, consectetur adipiscing elit.",
                      siz: 18,
                      col: const Color(0xff858585),
                      font: FontWeight.w400,
                      fontS: FontStyle.normal,
                    ),
                  )),
              //Spacer(flex: 1,),

              const SizedBox(
                height: 30,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: mytext(
                        text: "Email",
                        siz: 22,
                        col: Colors.black,
                        font: FontWeight.w600,
                        fontS: FontStyle.normal),
                  )),
              const SizedBox(height: 10),
              DefaultTextField(
                height: 60,
                controller: nameController,
                keyboardtype: TextInputType.emailAddress,
                labletext: "Enter Your Email",
                weight: 360,
                fillcolor: const Color.fromARGB(217, 217, 217, 217),
                radius: 10,
              ),
              const SizedBox(height: 15),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: mytext(
                      text: "Password",
                      siz: 22,
                      col: Colors.black,
                      font: FontWeight.w600,
                      fontS: FontStyle.normal),
                ),
              ),
              const SizedBox(height: 10),
              DefaultTextField(
                height: 60,
                controller: passwordController,
                keyboardtype: TextInputType.text,
                labletext: "Enter Your Password",
                weight: 360,
                fillcolor: const Color.fromARGB(217, 217, 217, 217),
                radius: 10,
                ispass: true,
                suffixicon: Icons.visibility_off,
                iconColor: const Color(0xff0B8FAC),
              ),
              const SizedBox(
                height: 2,
              ),
              TextButton(
                onPressed: () {},
                child: Align(
                    alignment: Alignment.centerRight,
                    child: mytext(
                        text: "Forget Password",
                        siz: 18,
                        col: Colors.black,
                        font: FontWeight.w500,
                        fontS: FontStyle.normal)),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => const Medical_Center())));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xff0B8FAC)),
                    fixedSize:
                        MaterialStateProperty.all<Size>(const Size(320, 50)),

                    // shape: MaterialStateProperty.all<OutlinedBorder>(BorderRadius.all(Radius 5) as OutlinedBorder),
                    // overlayColor: MaterialStateProperty.all<Color>(Colors.white)
                  ),
                  child: mytext(
                      text: "Sign In",
                      siz: 22,
                      col: Colors.white,
                      font: FontWeight.w700,
                      fontS: FontStyle.normal)),

              const SizedBox(
                height: 25,
              ),
              Center(
                  child: mytext(
                      text: "OR",
                      siz: 22,
                      col: const Color(0xff858585),
                      font: FontWeight.w700,
                      fontS: FontStyle.normal)),
              const SizedBox(
                height: 15,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                        "assets/Facebook-logo-blue-circle-large-transparent-png 2.png"),
                    iconSize: 50,
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                        "assets/google-logo-png-suite-everything-you-need-know-about-google-newest-0 2.png"),
                    iconSize: 50,
                  )
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don’t have an account?",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff858585),
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Signup_Screen()));
                      },
                      child: mytext(
                        text: "Sign UP",
                        siz: 18,
                        col: const Color(0xff0B8FAC),
                        font: FontWeight.w600,
                        fontS: FontStyle.normal,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
