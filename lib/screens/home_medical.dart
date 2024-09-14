import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../shared/shared.dart';
import 'Doctors.dart';

class Medical_Center extends StatefulWidget {
  const Medical_Center({super.key});

  @override
  State<Medical_Center> createState() => _Medical_CenterState();
}

class _Medical_CenterState extends State<Medical_Center> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/Ellipse 18.png"),
                      radius: 35,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        mytext(
                          text: "Hi,Welcome Back,",
                          siz: 14,
                          col: const Color(0xff858585),
                          fontS: FontStyle.normal,
                          font: FontWeight.w300,
                        ),
                        mytext(
                          text: "John Doe William",
                          siz: 18,
                          col: Colors.black,
                          font: FontWeight.w600,
                          fontS: FontStyle.normal,
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Icon(Icons.notification_add_rounded),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                DefaultTextField(
                  height: 60,
                  controller: nameController,
                  keyboardtype: TextInputType.text,
                  labletext: "Search a Doctor",
                  weight: 360,
                  fillcolor: const Color.fromARGB(217, 217, 217, 217),
                  radius: 10,
                  suffixicon: Icons.mic,
                  prefixicon: Icons.search,
                  iconColor: const Color(0xff858585),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff0B8FAC),
                      borderRadius: BorderRadius.circular(10)),
                  width: 376.55,
                  height: 169.56,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            mytext(
                              text: "Medical Center",
                              siz: 26,
                              col: Colors.white,
                              font: FontWeight.w700,
                              fontS: FontStyle.normal,
                            ),
                            mytext(
                              text: '''Yorem ipsum dolor sit amet, 
      consectetur adipiscing elit. Nunc 
      vulputate libero et velit interdum, ac 
      aliquet odio mattis.''',
                              siz: 12,
                              col: Colors.white,
                              font: FontWeight.w400,
                              fontS: FontStyle.normal,
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Image.asset(
                        "assets/doctor-bulk-billing-doctors-chapel-hill-health-care-medical-3 1.png",
                        height: 153.12,
                        width: 138.38,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    mytext(
                      text: "Categories",
                      siz: 24,
                      col: Colors.black,
                      font: FontWeight.w600,
                      fontS: FontStyle.normal,
                    ),
                    const Spacer(),
                    mytext(
                      text: "See All",
                      siz: 16,
                      col: const Color(0xff858585),
                      font: FontWeight.w400,
                      fontS: FontStyle.normal,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0xff7BC1B7),
                            borderRadius: BorderRadius.circular(10)),
                        width: 145,
                        height: 80,
                        child: mytext(
                          text: "denteeth",
                          siz: 20,
                          col: Colors.white,
                          font: FontWeight.w600,
                          fontS: FontStyle.normal,
                        ),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0xff7BC1B7),
                            borderRadius: BorderRadius.circular(10)),
                        width: 145,
                        height: 80,
                        child: mytext(
                          text: "Theripist",
                          siz: 20,
                          col: Colors.white,
                          font: FontWeight.w600,
                          fontS: FontStyle.normal,
                        ),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0xff7BC1B7),
                            borderRadius: BorderRadius.circular(10)),
                        width: 145,
                        height: 80,
                        child: mytext(
                          text: "surgeon",
                          siz: 20,
                          col: Colors.white,
                          font: FontWeight.w600,
                          fontS: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                  mytext(
                    text: "All Doctors",
                    siz: 24,
                    col: Colors.black,
                    font: FontWeight.w600,
                    fontS: FontStyle.normal,
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {
                        {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: ((context) => Doctor())));
                        }
                      },
                      child: mytext(
                        text: "See All",
                        siz: 16,
                        col: const Color(0xff858585),
                        font: FontWeight.w400,
                        fontS: FontStyle.normal,
                      ))
                ]),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 222, 243, 240),
                  ),
                  width: 400,
                  height: 161.87,
                  child: Row(children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                          "assets/doctor-bulk-billing-doctors-chapel-hill-health-care-medical-3 1.png",
                          height: 153.12,
                          width: 138.38),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            mytext(
                              text: "Dr.Pawan",
                              siz: 18,
                              col: Colors.black,
                              font: FontWeight.w600,
                              fontS: FontStyle.normal,
                            ),
                            const SizedBox(
                              width: 90,
                            ),
                            IconButton(
                                onPressed: () {},
                                highlightColor: const Color(0xff0B8FAC),
                                icon: const Icon(CupertinoIcons.heart),
                                color: const Color(0xff0B8FAC))
                          ],
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            mytext(
                              text: '''Jorem ipsum dolor, consectetur
   adipiscing elit. Nunc v libero et 
   velit interdum, ac  mattis.''',
                              siz: 12,
                              col: const Color(0xff858585),
                              font: FontWeight.w400,
                              fontS: FontStyle.normal,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xff0B8FAC),
                                  borderRadius: BorderRadius.circular(20)),
                              child: mytext(
                                text: "Book",
                                siz: 16,
                                col: Colors.white,
                                font: FontWeight.w400,
                                fontS: FontStyle.normal,
                              ),
                            ),
                            const SizedBox(
                              width: 62,
                            ),

                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.star),
                              color: Colors.orangeAccent,
                            ),
                            //SizedBox(width: 0.5,),
                            mytext(
                              text: "5.0",
                              siz: 16,
                              col: Colors.black,
                              font: FontWeight.w600,
                              fontS: FontStyle.normal,
                            )
                          ],
                        )
                      ],
                    )
                  ]),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: Color(0xff0B8FAC),
              ),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_time, color: Colors.black),
              label: 'Statics',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline_sharp, color: Colors.black),
              label: 'Routine',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined, color: Colors.black),
              label: 'setting',
            ),
          ],
        ),
      ),
    );
  }
}
