// ignore_for_file: non_constant_identifier_names

import 'package:bmi_calculator/colors.dart';
import 'package:bmi_calculator/resultscreen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int height = 150;
  int weight = 45;
  int age = 20;
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.Primary,
        appBar: AppBar(
          backgroundColor: AppColors.Primary,
          centerTitle: true,
          title: Text("BMI CALCULATOR",
              style: TextStyle(fontSize: 30, color: AppColors.White)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 5, bottom: 10),
                      decoration: BoxDecoration(
                          color: (isMale == true)
                              ? AppColors.OnClick
                              : AppColors.secondry,
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            size: 85,
                            color: AppColors.White,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "male",
                            style: TextStyle(
                                color: AppColors.Grey,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  )),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 5, bottom: 10),
                      decoration: BoxDecoration(
                          color: (isMale == true)
                              ? AppColors.secondry
                              : AppColors.OnClick,
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            size: 85,
                            color: AppColors.White,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "female",
                            style: TextStyle(
                                color: AppColors.Grey,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  )),
                ],
              )),
              Expanded(
                  child: Container(
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    color: AppColors.secondry,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "height",
                      style: TextStyle(fontSize: 20, color: AppColors.Grey),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: TextStyle(
                              fontSize: 40,
                              color: AppColors.White,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " cm",
                          style: TextStyle(
                              fontSize: 18,
                              color: AppColors.Grey,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Slider(
                        value: height.toDouble(),
                        min: 100,
                        max: 220,
                        activeColor: AppColors.OnClick,
                        inactiveColor: AppColors.Grey,
                        onChanged: (Val) {
                          setState(() {
                            height = Val.toInt();
                          });
                        })
                  ],
                ),
              )),
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.only(right: 5, bottom: 10),
                    decoration: BoxDecoration(
                        color: AppColors.secondry,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Weight",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: AppColors.Grey),
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                              color: AppColors.White),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              backgroundColor: AppColors.Grey,
                              onPressed: () {
                                setState(() {
                                  if (weight > 45) {
                                    weight--;
                                  }
                                });
                              },
                              shape: const CircleBorder(),
                              child: Icon(
                                Icons.remove,
                                color: AppColors.White,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              backgroundColor: AppColors.Grey,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              shape: const CircleBorder(),
                              child: Icon(
                                Icons.add,
                                color: AppColors.White,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.only(left: 5, bottom: 10),
                    decoration: BoxDecoration(
                        color: AppColors.secondry,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Age",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: AppColors.Grey),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                              color: AppColors.White),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              backgroundColor: AppColors.Grey,
                              onPressed: () {
                                setState(() {
                                  if (age > 0) {
                                    age--;
                                  }
                                });
                              },
                              shape: const CircleBorder(),
                              child: Icon(
                                Icons.remove,
                                color: AppColors.White,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              backgroundColor: AppColors.Grey,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              shape: const CircleBorder(),
                              child: Icon(
                                Icons.add,
                                color: AppColors.White,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ))
                ],
              )),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.OnClick,
                      foregroundColor: AppColors.White),
                  onPressed: () {
                    double res = weight / ((height / 100) * (height / 100));
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ResultScreen(result: res),
                    ));
                  },
                  child: const Text(
                    "calculate",
                    style: TextStyle(fontSize: 30),
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
