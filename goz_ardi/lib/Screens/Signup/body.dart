import 'package:flutter/material.dart';
import 'package:goz_ardi/Screens/Signup/background.dart';
import 'package:goz_ardi/Screens/Signup/or_divider.dart';
import 'package:goz_ardi/Screens/login/Components/body.dart';
import 'package:goz_ardi/Screens/login/login_screen.dart';

class Body extends StatelessWidget {

  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Background(
      child: Column(
        children:<Widget> [
          SizedBox(
            height: 240,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Yeni Hesap Oluştur",
              style: TextStyle(fontWeight: FontWeight.bold,
                fontSize:20,
              ),),
          ),
          RoundedInputField(
              hintText: "Kullanıcı Adı ve Soyadı",
              onChange: (value) {},
          ),
          RoundedInputField(
            hintText: "E-mail",
            onChange: (value) {},
          ),
          RoundedInputField(
              hintText: "Şifre",
              onChange: (value) {},
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 0.02),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(29),
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical:20 , horizontal: 40),
                color: Colors.black,
                onPressed: () {},
                child:
                Text(
                  "Kayıt Ol",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context){
                  return LoginScreen();
                  },
                ),
              );
              },
          ),
          OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SocalIcon(iconSrc: 'assets/Icon [ICON=custom-google][SIZE=MEDIUM][STATE=DEFAULT][STYLE=STYLE2].png',),
              SocalIcon(iconSrc: 'assets/Icon [ICON=feather-facebook][SIZE=MEDIUM][STATE=DEFAULT][STYLE=STYLE2].png',),
              SocalIcon(iconSrc: 'assets/Icon [ICON=feather-linkedin][SIZE=MEDIUM][STATE=DEFAULT][STYLE=STYLE2].png',),
              SocalIcon(iconSrc: 'assets/Icon [ICON=feather-twitter][SIZE=MEDIUM][STATE=DEFAULT][STYLE=STYLE2].png',),

            ],
          )
        ],
      ),
    );
  }
}

class SocalIcon extends StatelessWidget {
  final String iconSrc;
  const SocalIcon({
    Key? key,
    required this.iconSrc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all( width:2,),
          shape: BoxShape.circle
        ),
          child: Image.asset(
            iconSrc,
            height: 20,
            width: 20,
          ),
        ),
    );
  }
}


