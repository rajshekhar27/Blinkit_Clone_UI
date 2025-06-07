import 'package:flutter/material.dart';

class UiHelper {
  static CustomImage({required String img}) {
    return Image.asset("assets/images/$img");
  }

  static CustomText({
    required String text,
    required Color color,
    required FontWeight fontweight,
    String? fontfamily,
    required double fontsize,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        fontWeight: fontweight,
        fontFamily: fontfamily ?? "regular",
        color: color,
      ),
    );
  }

  static CustomTextField({required TextEditingController controller}){
    return Container(
      height: 37,
      width: 346,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
          color: Color(0XFFC5C5C5),
        )
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: "Search “ice-cream”",
          prefixIcon: Icon(Icons.search),
          suffixIcon: Icon(Icons.mic),
          border: InputBorder.none,
        ),
      ),
    );
  }
  
  static CustomButton(VoidCallback callback){
    return Container(
      
      height: 18,
      width: 30,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0XFF27AF34)
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Text("Add", style: TextStyle(fontSize: 6, color: Color(0XFF27AF34)),),
      ),
    );
  }
}
