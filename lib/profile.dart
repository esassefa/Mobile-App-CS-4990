import 'package:flutter/material.dart';
import 'dart:math';
import 'data.dart';



class ProfilePage extends StatefulWidget {


  @override
  ProfilePageState createState() => ProfilePageState();



}


class ProfilePageState extends State<ProfilePage> {

  static Random rand = Random();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(


      body:SingleChildScrollView(



        padding:EdgeInsets.symmetric(horizontal: 10),

        child: Container(

          width: MediaQuery.of(context).size.width,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height:40),

              CircleAvatar(
                backgroundImage: AssetImage(

                  "assets/animal-profiles/animal${rand.nextInt(5)}.jpg",
                ),
                radius: 60,
              ),
              SizedBox(height: 10),
              Text(
                testNames[rand.nextInt(5)],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.brown.shade600,
                ),
              ),
              SizedBox(height: 3),

              Text(
                states[rand.nextInt(5)],
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget> [
                  FlatButton(
                    textColor: Colors.white,
                    child: Text( "Follow",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.brown.shade600,


                        )
                    ),
                    color: Colors.teal.shade300,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),

                    onPressed: () {},
                  ),
                  SizedBox(width:10),
                  FlatButton(
                    textColor: Colors.white,
                    color: Colors.teal.shade300,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),

                    onPressed: () {},
                    child: Text( "Request",

                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.brown.shade600,

                      )
                    ),
                  ),
                ],
              ),


              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          rand.nextInt(1000).toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.brown.shade600,

                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Followers",
                          style: TextStyle(
                            color: Colors.teal.shade300,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          rand.nextInt(100).toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.brown.shade600,

                            fontSize: 24,


                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Books Shared",
                          style: TextStyle(
                            color: Colors.teal.shade300,
                            fontWeight: FontWeight.bold,

                          )
                        )
                      ]

                    ),



                  ],
                ),

              ),
              SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                primary: false,
                padding:EdgeInsets.all(5),
                itemCount: 9,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 200 / 200,

                ),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Image.asset(
                      "assets/images/b${rand.nextInt(4)}.jpg",
                      fit:BoxFit.cover,
                    )
                  );
                }
              )

            ]
          )
        )

      )
    );
  }


}