import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'UI/CustomInputField.dart';
import 'profile.dart';
import 'auth.dart';



Map<int, Color> color = {


  // 900: Color.fromRGBO(106, 182, 150, 1),

  50: Color.fromRGBO(106, 232, 222, .1),
  100: Color.fromRGBO(106, 232, 222, .2),
  200: Color.fromRGBO(106, 232, 222, .3),
  300: Color.fromRGBO(106, 232, 222, .4),
  400: Color.fromRGBO(106, 232, 222, .5),
  500: Color.fromRGBO(106, 232, 222, .6),
  600: Color.fromRGBO(106, 232, 222, .7),
  700: Color.fromRGBO(106, 232, 222, .8),
  800: Color.fromRGBO(106, 232, 222, .9),
  900: Color.fromRGBO(106, 232, 222, 1),
};


MaterialColor colorCustom = MaterialColor(0xFF6AE8DE, color);







class LoginPage extends StatefulWidget {
  LoginPage({this.auth, this.onSignedOut});

  final BaseAuth auth;
  final onSignedOut;

  void signOut() async {
    try {
      await auth.signOut();
      onSignedOut();
    }catch (e) {

    }
  }



  @override
  _LoginPageState createState() => _LoginPageState();




}

class _LoginPageState extends State<LoginPage> {


  final FirebaseAuth _auth = FirebaseAuth.instance;

//String _email, _password;
var emailEditingController = TextEditingController();
var passwordEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //title: 'Welcome to Flutter',

       body: Center(
         child: Container(
           constraints: BoxConstraints.expand(),
           decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage("assets/images/bookshelf.jpg"),
               fit: BoxFit.cover,
               colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.85), BlendMode.dstATop),

             ),
           ),
             child: Center(
               child: Container(
                 width: 400,
                 height: 300,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: <Widget> [
                     Container(
                       width: 300,

                       child: Text("Worlds at your fingertips!", style: TextStyle(
                         fontSize: 25.0,
                         fontWeight: FontWeight.bold,
                         fontStyle: FontStyle.italic,
                         color: Colors.white,
                       ),
                         textAlign: TextAlign.center,

                       ),

                     ),
                     Container(
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
                          child: Icon(Icons.person, color: Colors.white),
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
                                controller: emailEditingController,
                                  obscureText: false,
                              decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email",
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
            ),
                   Container(
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
                       child: Icon(Icons.lock, color: Colors.white),
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
                             controller: passwordEditingController,
                             obscureText: true,//this is where yu sun added...
                           decoration: InputDecoration(
                           border: InputBorder.none,
                           hintText: "Password",
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
                   ),

                   //  CustomInputField(
                   //      Icon(Icons.person, color: Colors.white), "Username"),
                  //   CustomInputField(
                   //      Icon(Icons.lock, color: Colors.white), "Password"),
                     Container(
                       width:150,
                         child: RaisedButton(onPressed: (){
                           _auth.signInWithEmailAndPassword(
                               email: emailEditingController.text.toString(),
                               password: passwordEditingController.text.toString())
                           .then((value) {
                             print("Successfully logged in" + value.user.uid);

                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) => ProfilePage()),

                             );
                           }).catchError((e) {
                             print("Failed to Login." + e.toString());
                           });


                           Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => ProfilePage()),

                           );
                          },
                           color: Colors.brown.shade200, textColor: Colors.white,
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                         child: Text("Login", style: TextStyle(
                           fontSize: 20.0,
                         )
                         ),
                         elevation: 10.0,
                         ),
                     ),
                     Container(
                       width:150,
                       child: RaisedButton(onPressed: (){

                         print("clicked");
                         print(emailEditingController.text.toString());
                         print(passwordEditingController.text.toString());

                         _auth.createUserWithEmailAndPassword(
                             email: emailEditingController.text.toString(),
                             password: passwordEditingController.text.toString())
                         .then((value) {
                           print("Successfully signed up!" + value.user.uid);

                         }).catchError((e) {
                           print("Failed to sign up!" + e.toString());

                         });






                       },
                         color: Colors.red.shade400, textColor: Colors.white,
                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                         child: Text("Sign Up", style: TextStyle(
                           fontSize: 20.0,
                         )
                         ),
                         elevation: 10.0,
                       ),
                     ),

                   ]
                 )
               )

         )
         )
       )

    );
  }
}