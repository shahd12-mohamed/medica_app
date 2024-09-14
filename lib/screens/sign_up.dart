import 'package:flutter/material.dart';

import '../shared/shared.dart';
import 'home_medical.dart';


class Signup_Screen extends StatefulWidget {
  const Signup_Screen({super.key});

  @override
  State<Signup_Screen> createState() => _Signup_ScreenState();
}

class _Signup_ScreenState extends State<Signup_Screen> {
  TextEditingController nameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController fullname = TextEditingController();

  TextEditingController phonenumber = TextEditingController();

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
                text: "Create New Account",
                siz: 26,
                col: const Color(0xff0B8FAC),
                font: FontWeight.w700,
                fontS: FontStyle.normal,
              )),

              const SizedBox(
                height: 5,
              ),

              //Spacer(flex: 1,),

              const SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: mytext(
                      text: "Full Name",
                      siz: 22,
                      col: Colors.black,
                      font: FontWeight.w600,
                      fontS: FontStyle.normal,
                    ),
                  )),
              const SizedBox(height: 5),
              DefaultTextField(
                height: 60,
                controller: fullname,
                keyboardtype: TextInputType.text,
                labletext: "Enter Your Full Name",
                weight: 360,
                fillcolor: const Color.fromARGB(217, 217, 217, 217),
                radius: 10,
              ),
              const SizedBox(height: 2),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: mytext(
                      text: "Password",
                      siz: 22,
                      col: Colors.black,
                      font: FontWeight.w600,
                      fontS: FontStyle.normal,
                    ),
                  )),
              const SizedBox(height: 5),
              DefaultTextField(
                height: 60,
                controller: passwordController,
                keyboardtype: TextInputType.visiblePassword,
                labletext: "Enter Your Password",
                weight: 360,
                fillcolor: const Color.fromARGB(217, 217, 217, 217),
                radius: 10,
                ispass: true,
                suffixicon: Icons.visibility_off,
                iconColor: const Color(0xff0B8FAC),
              ),
              const SizedBox(height: 2),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: mytext(
                    text: "Email",
                    siz: 22,
                    col: Colors.black,
                    font: FontWeight.w600,
                    fontS: FontStyle.normal,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              DefaultTextField(
                height: 60,
                controller: nameController,
                keyboardtype: TextInputType.emailAddress,
                labletext: "Enter Your Email",
                weight: 360,
                fillcolor: const Color.fromARGB(217, 217, 217, 217),
                radius: 10,
              ),
              const SizedBox(height: 2),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: mytext(
                      text: "Mopile Number",
                      siz: 22,
                      col: Colors.black,
                      font: FontWeight.w600,
                      fontS: FontStyle.normal,
                    ),
                  )),
              const SizedBox(height: 5),
              DefaultTextField(
                height: 60,
                controller: phonenumber,
                keyboardtype: TextInputType.phone,
                labletext: "Enter Your Phone Number",
                weight: 360,
                fillcolor: const Color.fromARGB(217, 217, 217, 217),
                radius: 10,
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
                    backgroundColor:
                        WidgetStateProperty.all<Color>(const Color(0xff0B8FAC)),
                    fixedSize: WidgetStateProperty.all<Size>(const Size(320, 50)),

                    // shape: MaterialStateProperty.all<OutlinedBorder>(BorderRadius.all(Radius 5) as OutlinedBorder),
                    // overlayColor: MaterialStateProperty.all<Color>(Colors.white)
                  ),
                  child: mytext(
                    text: "Sign Up",
                    siz: 22,
                    col: Colors.white,
                    font: FontWeight.w700,
                    fontS: FontStyle.normal,
                  )),
              Center(
                  child: mytext(
                text: "OR",
                siz: 22,
                col: const Color(0xff858585),
                font: FontWeight.w700,
                fontS: FontStyle.normal,
              )),

              const SizedBox(
                height: 5,
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
                  mytext(
                      text: "Don’t have an account? ",
                      siz: 16,
                      col: const Color(0xff858585),
                      font: FontWeight.w700,
                      fontS: FontStyle.normal),
                  TextButton(
                      onPressed: () {},
                      child: mytext(
                          text: "Sign In",
                          siz: 18,
                          col: const Color(0xff0B8FAC),
                          font: FontWeight.w600,
                          fontS: FontStyle.normal)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
