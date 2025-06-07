
import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget{
  var searchcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40),
          Stack(
            children: [
              Container(
                  height: 160,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                    color: Color(0XFFF7CB45),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 10,),
                          UiHelper.CustomText(text: "Blinkit in", color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize: 12, fontfamily: "bold"),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 10,),
                          UiHelper.CustomText(text: "16 minutes", color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize: 20, fontfamily: "bold"),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 10,),
                          UiHelper.CustomText(text: "HOME -", color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize: 12, fontfamily: "bold"),
                          UiHelper.CustomText(text: " Shekhar, Sarvodya Nagar(201009)", color: Color(0XFF000000), fontweight: FontWeight.normal, fontsize: 12),

                        ],
                      ),
                      SizedBox(height: 10,),
                      UiHelper.CustomTextField(controller: searchcontroller),
                    ],
                  )
              ),
              Positioned(
                right: 30,
                top: 38,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  //backgroundImage: AssetImage("assets/images/user.png"),
                  child: Icon(Icons.person,color: Colors.black,),
                ),
              ),
            ],
          ),
          UiHelper.CustomImage(img: "cart.png"),
          UiHelper.CustomText(text: "Reordering will be easy", color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize: 16, fontfamily: "bold"),
          UiHelper.CustomText(text: "Items you order will show up here so you can buy", color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize: 10,),
          UiHelper.CustomText(text: "them again easily.", color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize: 10,),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width : 20,),
              UiHelper.CustomText(text: "Bestsellers", color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize: 16,fontfamily: "bold"),
            ],
          ),
          Row(
            children: [
                Stack(
                  children: [
                    UiHelper.CustomImage(img: "milk.png"),
                    Padding(padding: EdgeInsets.only(top: 95,left: 65),
                    child: UiHelper.CustomButton((){}),
                    ),
                  ],
                ),
              SizedBox(width: 15,),
              Stack(
                children: [
                  UiHelper.CustomImage(img: "potato.png"),
                  Padding(padding: EdgeInsets.only(top: 95,left: 65),
                    child: UiHelper.CustomButton((){}),
                  ),
                ],
              ),
              SizedBox(width: 15,),
              Stack(
                children: [
                  UiHelper.CustomImage(img: "tomato.png"),
                  Padding(padding: EdgeInsets.only(top: 95,left: 65),
                    child: UiHelper.CustomButton((){}),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 5,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UiHelper.CustomText(text: "Amul Taaza Toned", color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize: 8),
                  UiHelper.CustomText(text: "Fresh Milk", color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize: 8),
                  Row(
                    children: [
                      UiHelper.CustomImage(img: "timer.png"),
                      UiHelper.CustomText(text: "  16 MINS", color: Color(0XFF9C9C9C), fontweight: FontWeight.bold, fontsize: 12),
                    ],
                  ),
                  SizedBox(height: 2,),
                  Row(
                    children: [
                      UiHelper.CustomImage(img: "rupes.png"),
                      UiHelper.CustomText(text: "27", color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize: 15,fontfamily: "bold"),
                    ],
                  ),

                ],
            ),
              SizedBox(width: 40,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UiHelper.CustomText(text: "Potato (Aloo)", color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize: 8),
                  //UiHelper.CustomText(text: "Fresh Milk", color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize: 8),
                  Row(
                    children: [
                      UiHelper.CustomImage(img: "timer.png"),
                      UiHelper.CustomText(text: "  16 MINS", color: Color(0XFF9C9C9C), fontweight: FontWeight.bold, fontsize: 12),
                    ],
                  ),
                  SizedBox(height: 2,),
                  Row(
                    children: [
                      UiHelper.CustomImage(img: "rupes.png"),
                      UiHelper.CustomText(text: "37", color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize: 15,fontfamily: "bold"),
                    ],
                  ),

                ],
              ),
              SizedBox(width: 45,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UiHelper.CustomText(text: "Hybrid Tomato", color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize: 8),
                  //UiHelper.CustomText(text: "Fresh Milk", color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize: 8),
                  Row(
                    children: [
                      UiHelper.CustomImage(img: "timer.png"),
                      UiHelper.CustomText(text: "  16 MINS", color: Color(0XFF9C9C9C), fontweight: FontWeight.bold, fontsize: 12),
                    ],
                  ),
                  SizedBox(height: 2,),
                  Row(
                    children: [
                      UiHelper.CustomImage(img: "rupes.png"),
                      UiHelper.CustomText(text: "37", color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize: 15,fontfamily: "bold"),
                    ],
                  ),

                ],
              ),
            ],
          ),
        ],
      )
    );
  }

}