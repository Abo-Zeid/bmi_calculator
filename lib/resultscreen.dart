import 'package:bmi_calculator/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, required this.result});
  final double result;
  Color? color;
  String? text;
  String getClass() {
    if (result <= 18.5) {
      color = Colors.yellow;
      text = "Under weight";
      return "Under weight";
    } else if (result <= 24.9) {
      text = "Normal";
      color = Colors.green;
      return "Normal";
    } else if (result <= 39.9) {
      color = Colors.red;
      text = "Over wieght";
      return "Over wieght";
    } else {
      color = Colors.black;
      text = "DEAD";
      return "DEAD BODY";
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: AppColors.White,
                )),
            backgroundColor: AppColors.Primary,
          ),
          backgroundColor: AppColors.Primary,
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Your Result",
                      style: TextStyle(color: AppColors.White, fontSize: 40)),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 20, bottom: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.secondry),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(getClass(),
                              style: TextStyle(fontSize: 30, color: color)),
                          Text(
                            result.toStringAsFixed(2),
                            style:
                                TextStyle(fontSize: 50, color: AppColors.White),
                          ),
                          Text(
                            "Your body is absolutoly $getClass() ",
                            style:
                                TextStyle(color: AppColors.White, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 80,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.OnClick),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Reclulate",
                          style:
                              TextStyle(fontSize: 20, color: AppColors.White)),
                    ),
                  )
                ]),
          )),
    );
  }
}
