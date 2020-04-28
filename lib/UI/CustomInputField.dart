/**import 'package:flutter/material.dart';


class CustomInputField extends StatelessWidget{

Icon fieldIcon;
String hintText;

  CustomInputField(this.fieldIcon, this.hintText);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 250.0,
      child: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.brown.shade200,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: fieldIcon,
                ),
                Container(

                  decoration: BoxDecoration(
                    color: Colors.white,

                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), bottomRight: Radius.circular(10.0)),


                  ),
                  width: 200.0,
                  height: 60,

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      if(hintText == "Password")
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: hintText,
                          fillColor: Colors.white,
                          filled: true,

                        ),
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        )

                    ),
                  ),
                ),
              ]

          )
      ),
    );
  }

}**/