
import 'package:flutter/material.dart';
import 'package:goz_ardi/Screens/Signup/signup_screen.dart';
import 'package:goz_ardi/Screens/components/background.dart';
import 'package:goz_ardi/Screens/login/login_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 270,
              ),
              Text(
                  "Göz ardı ettiklerimiz ve daha fazlası",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  color: Colors.white,
                ),
              ),


              Container(

                margin: EdgeInsets.symmetric(vertical: 10),
                child: ClipRRect(

                  borderRadius: BorderRadius.circular(29),
                  child: FlatButton(

                    padding: EdgeInsets.symmetric(vertical:20 , horizontal: 40),
                      color: Colors.white,
                      onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context){
                                return LoginScreen();
                              },
                          ),
                      );
                      },
                      child:

                      Text(
                          "Giriş Yap",

                        style: TextStyle(color: Colors.blue),

                      ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(29),
                  child: FlatButton(
                      padding: EdgeInsets.symmetric(vertical:20 , horizontal: 40),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context, MaterialPageRoute(
                          builder:
                              (context){
                            return SignUpScreen();
                          },
                        ),
                        );
                      },
                      child:
                      Text(
                        "Kayıt Ol",
                        style: TextStyle(color: Colors.blue),

                      ),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}

