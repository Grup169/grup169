import 'package:flutter/material.dart';
import 'package:goz_ardi/Screens/Signup/signup_screen.dart';
import 'package:goz_ardi/Screens/components/rounded_input_field.dart';
import 'package:goz_ardi/Screens/login/Components/background.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        children:<Widget> [
          SizedBox(
            height: 270,
          ),
          Text(
              "Giriş Yap",
          style: TextStyle(fontWeight: FontWeight.bold,
          fontSize:20,
          ),),
          RoundedInputField(
            hintText: "Kullanıcı Adı yada E-mail",
            onChange: (value) {},
          ),
          RoundedPasswordField(
            onChange: (value) {},
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(29),
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical:20 , horizontal: 40),
                color: Colors.black,
                onPressed: () {},
                child:
                Text(
                  "Giriş Yap",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          AlreadyHaveAnAccountCheck(
            press: () {},
          )





        ],
      ),
    );
  }
}

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
           login? "Yeni Kullanıcı ? " : "Zaten Bir Hesabınız Var"
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(
                builder:
            (context){
                  return SignUpScreen();
                  },
            ),
            );
            },
          child: Text(
              login? "Yeni Hesap Oluştur" : "Oturum Aç",
            style: TextStyle(fontWeight: FontWeight.bold) ,
          ),
        ),
      ],
    );
  }
}

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChange;
  const RoundedPasswordField({
    Key? key,
    required this.onChange,S
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChange,

      decoration: InputDecoration(
        hintText: "Şifre",
        icon: Icon(
            Icons.lock
        ),
        suffixIcon: Icon(
            Icons.visibility,
        ),
        border: InputBorder.none,
      ),
      ),
    );
  }
}
class RoundedInputField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChange;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChange,
        decoration: InputDecoration(
          icon: Icon(
            Icons.person,
            color: Colors.black,
          ) ,
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}




