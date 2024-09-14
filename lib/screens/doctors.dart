import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../shared/shared.dart';
import 'home_medical.dart';


class Doctor extends StatelessWidget{
  TextEditingController nameController = TextEditingController();

  Doctor({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: ((context) => const Medical_Center() ))); }, icon: const Icon(Icons.arrow_back_ios,color:Colors.grey,)),
          //Icon(Icons.arrow_back_ios,color:Colors.grey,),
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: mytext(text: "All Doctors", siz: 26, col: const Color(0xff0B8FAC), font: FontWeight.w700, fontS: FontStyle.normal, ),
            ),
          )
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const SizedBox(height: 20,),
              DefaultTextField(

                height: 60,
                controller: nameController,
                keyboardtype: TextInputType.text,
                labletext: "Search a Doctor",
                weight:360,
                fillcolor: const Color.fromARGB(217, 217, 217, 217),
                radius: 10,
                suffixicon: Icons.mic,
                prefixicon: Icons.search,
                iconColor: const Color(0xff858585),
              ),


              const SizedBox(height: 10,),
              Container(

                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 222, 243, 240),
                    borderRadius: BorderRadius.circular(10)
                ),

                width:376.55,
                height: 161.87,
                child: Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset("assets/doctor-bulk-billing-doctors-chapel-hill-health-care-medical-3 1.png",
                            height:153.12,
                            width:138.38 ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(

                            children: [
                              mytext(text: "Dr.Pawan", siz: 18, col: Colors.black, font: FontWeight.w600, fontS: FontStyle.normal, ),
                              const SizedBox(width: 70,),

                              IconButton(onPressed: (){},highlightColor: const Color(0xff0B8FAC),
                                  icon: const Icon(CupertinoIcons.heart),color: const Color(0xff0B8FAC))
                            ],
                          ),
                          const SizedBox(height: 1,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              mytext(text: '''Jorem ipsum dolor, consectetur
adipiscing elit. Nunc v libero et 
velit interdum, ac  mattis.''', siz: 12, col :const Color(0xff858585), font: FontWeight.w400, fontS: FontStyle.normal, ),
                            ],
                          ),
                          const SizedBox(height: 3,),
                          Row(
                            children: [
                              Container(
                                decoration:BoxDecoration(
                                    color: const Color(0xff0B8FAC),
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child:  mytext(text: "Book", siz: 16, col: Colors.white, font: FontWeight.w400, fontS: FontStyle.normal, ),
                              ),
                              const SizedBox(width: 62,),

                              IconButton(onPressed: (){}, icon: const Icon(Icons.star),color: Colors.orangeAccent,),
                              //SizedBox(width: 0.5,),
                              mytext(text: "5.0", siz: 16, col: Colors.black, font: FontWeight.w600, fontS: FontStyle.normal, )
                            ],
                          )
                        ],
                      )
                    ]

                ),
              ),
              const SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 222, 243, 240),
                    borderRadius: BorderRadius.circular(10)
                ),

                width:376.55,
                height: 161.87,
                child: Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset("assets/doctor-bulk-billing-doctors-chapel-hill-health-care-medical-3 1.png",
                            height:153.12,
                            width:138.38 ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(

                            children: [
                              mytext(text: "Dr.Wanitha", siz: 18, col: Colors.black, font: FontWeight.w600, fontS: FontStyle.normal, ),
                              const SizedBox(width: 60,),

                              IconButton(onPressed: (){},highlightColor: const Color(0xff0B8FAC),
                                  icon: const Icon(CupertinoIcons.heart),color: const Color(0xff0B8FAC))
                            ],
                          ),
                          const SizedBox(height: 1,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              mytext(text: '''Jorem ipsum dolor, consectetur
adipiscing elit. Nunc v libero et 
velit interdum, ac  mattis.''', siz: 12, col: const Color(0xff858585), font: FontWeight.w400, fontS: FontStyle.normal, ),
                            ],
                          ),
                          const SizedBox(height: 3,),
                          Row(
                            children: [
                              Container(
                                decoration:BoxDecoration(
                                    color: const Color(0xff0B8FAC),
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child:  mytext(text: "Book", siz: 16, col: Colors.white, font: FontWeight.w400, fontS: FontStyle.normal, ),
                              ),
                              const SizedBox(width: 60,),

                              IconButton(onPressed: (){}, icon: const Icon(Icons.star),color: Colors.orangeAccent,),
                              //SizedBox(width: 0.5,),
                              mytext(text: "5.0", siz: 16, col: Colors.black, font: FontWeight.w600, fontS: FontStyle.normal, )
                            ],
                          )
                        ],
                      )
                    ]

                ),
              ),
              //
              const SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 222, 243, 240),
                    borderRadius: BorderRadius.circular(10)
                ),

                width:376.55,
                height: 161.87,
                child: Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset("assets/istockphoto-138205019-612x612-removebg-preview 1 (1).png",
                            height:153.12,
                            width:138.38 ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(

                            children: [
                              mytext(text: "Dr.Udara", siz: 18, col: Colors.black, font: FontWeight.w600, fontS: FontStyle.normal, ),
                              const SizedBox(width: 60,),


                              IconButton(onPressed: (){},highlightColor: const Color(0xff0B8FAC),
                                  icon: const Icon(CupertinoIcons.heart),color: const Color(0xff0B8FAC))
                            ],
                          ),
                          const SizedBox(height: 1,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              mytext(text: '''Jorem ipsum dolor, consectetur
adipiscing elit. Nunc v libero et 
velit interdum, ac  mattis.''', siz: 12, col: const Color(0xff858585), font: FontWeight.w400, fontS: FontStyle.normal, ),
                            ],
                          ),
                          const SizedBox(height: 3,),
                          Row(
                            children: [
                              Container(
                                decoration:BoxDecoration(
                                    color: const Color(0xff0B8FAC),
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child:  mytext(text: "Book", siz: 16, col: Colors.white, font: FontWeight.w400, fontS: FontStyle.normal, ),
                              ),
                              const SizedBox(width: 60,),

                              IconButton(onPressed: (){}, icon: const Icon(Icons.star),color: Colors.orangeAccent,),
                              //SizedBox(width: 0.5,),
                              mytext(text: "5.0", siz: 16, col: Colors.black, font: FontWeight.w600, fontS: FontStyle.normal, )
                            ],
                          )
                        ],
                      )
                    ]

                ),
              ),
              //
              const SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 222, 243, 240),
                    borderRadius: BorderRadius.circular(10)
                ),

                width:376.55,
                height: 161.87,
                child: Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset("assets/doctor-bulk-billing-doctors-chapel-hill-health-care-medical-3 1.png",
                            height:153.12,
                            width:138.38 ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(

                            children: [
                              mytext(text: "Dr.Pawan", siz: 18, col: Colors.black, font: FontWeight.w600, fontS: FontStyle.normal, ),
                              const SizedBox(width: 60,),


                              IconButton(onPressed: (){},highlightColor: const Color(0xff0B8FAC),
                                  icon: const Icon(CupertinoIcons.heart),color: const Color(0xff0B8FAC))
                            ],
                          ),
                          const SizedBox(height: 1,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              mytext(text: '''Jorem ipsum dolor, consectetur
adipiscing elit. Nunc v libero et 
velit interdum, ac  mattis.''', siz: 12, col: const Color(0xff858585), font: FontWeight.w400, fontS: FontStyle.normal, ),
                            ],
                          ),
                          const SizedBox(height: 3,),
                          Row(
                            children: [
                              Container(
                                decoration:BoxDecoration(
                                    color: const Color(0xff0B8FAC),
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child:  mytext(text: "Book", siz: 16, col: Colors.white, font: FontWeight.w400, fontS: FontStyle.normal, ),
                              ),
                              const SizedBox(width: 60,),

                              IconButton(onPressed: (){}, icon: const Icon(Icons.star),color: Colors.orangeAccent,),
                              //SizedBox(width: 0.5,),
                              mytext(text: "5.0", siz: 16, col: Colors.black, font: FontWeight.w600, fontS: FontStyle.normal, )
                            ],
                          )
                        ],
                      )
                    ]

                ),
              ),





            ],

          ),
        ),
      ),
    );
  }

}