import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../widgets/uihelper.dart';

class CategoryScreen extends StatelessWidget{
  var searchcontroller=TextEditingController();

  var ggrocery=[
    {"img":"vegitables.png",
    "text":"Vegetables & \nFruits",
    },

    { "img":"Atta_dal.png",
      "text":"Atta, Dal &\nRice",
    },
    {"img":"oil and ghee.png",
    "text":"Oil, Ghee &\nMasala",
    },
    {"img":"dairy product.png",
     "text":"Dairy, Bread &\nMilk",
    },
    {"img": "buscits.png",
      "text":"Biscuits & \nBakery",
    },
  ];

  var secondgrocery=[
    {"img":"dryfruits.png",
      "text":"Dry Fruits &\nCereals",
    },
    {"img":"kitchen.png",
      "text":"Kitchen &\nAppliances",
    },
    {"img":"coffe.png",
      "text":"Vegetables & \nFruits",
    },
    {"img":"vegitables.png",
      "text":"Tea &\nCoffees",
    },
    {"img":"Noodle.png",
      "text":"Noodles &\nPacket Food",
    },
  ];

  var thirdcategory=[
    {"img":"chips.png",
      "text":"Chips &\nNamkeens",
    },
    {"img":"sweets.png",
      "text":"Sweets &\nChocalates",
    },
    {"img":"drinks.png",
      "text":"Drinks &\nJuices",
    },
    {"img":"sauces.png",
      "text":"Sauces &\nSpreads",
    },
  ];

  var fourthcategory=[
    {"img":"bathroom.png",},
    {"img":"sauces.png",},
    {"img":"perfume.png",},
    {"img":"Furnuture.png",},
    {"img":"sauces.png",},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            Stack(
              children:[ Container(
                height: 160,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0XFFF7CB45),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
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
                ),
              ),
                Positioned(
                  right: 30,
                    top: 38,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person, color: Colors.black,),
                    ),
                ),
        ]
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 10,),
                UiHelper.CustomText(text: "Grocery & Kitchen", color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize: 14, fontfamily: "bold"),
              ],
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListView.builder(itemBuilder: (context, index)
                {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0XFFD9EBEB),
                          ),
                          child: UiHelper.CustomImage(img: ggrocery[index]["img"].toString()),
                        ),
                      ),
                      UiHelper.CustomText(text: ggrocery[index]["text"].toString(), color: Color(0XFF000000), fontweight: FontWeight.normal, fontsize: 10),
                    ],
                  );
                },
                  scrollDirection: Axis.horizontal,
                itemCount: ggrocery.length,),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListView.builder(itemBuilder: (context, index){
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0XFFD9EBEB),
                          ),
                          child: UiHelper.CustomImage(img: secondgrocery[index]["img"].toString()),
                        ),
                      ),
                      UiHelper.CustomText(text: secondgrocery[index]["text"].toString(), color: Color(0XFF000000), fontweight: FontWeight.normal, fontsize: 10),
                    ],
                  );
                },
                itemCount: secondgrocery.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Row(
              children: [
                UiHelper.CustomText(text: "Snacks & Drinks", color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize: 14, fontfamily: "bold"),
              ],
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListView.builder(itemBuilder: (context, index){
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0XFFD9EBEB),
                          ),
                          child: UiHelper.CustomImage(img: thirdcategory[index]["img"].toString()),
                        ),
                      ),
                      UiHelper.CustomText(text: thirdcategory[index]["text"].toString(), color: Color(0XFF000000), fontweight: FontWeight.normal, fontsize: 10),
                    ],
                  );
                },
                  itemCount: thirdcategory.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Row(
              children: [
                UiHelper.CustomText(text: "Household Essentials", color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize: 14, fontfamily: "bold"),
              ],
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListView.builder(itemBuilder: (context, index){
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0XFFD9EBEB),
                          ),
                          child: UiHelper.CustomImage(img: fourthcategory[index]["img"].toString()),
                        ),
                      ),
                    ],
                  );
                },
                  itemCount: fourthcategory.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}