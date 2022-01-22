// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:untitled/src/utils/my_colors.dart';
import 'package:lottie/lottie.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      // ignore: sized_box_for_whitespace
      body: Container(

        width: double.infinity,

        child: Stack(
          children: [

            Positioned(
                top:-80,
                left: -100,
                child: _circleLogin()
            ),

            Positioned(
                child: _textLogin(),
                top: 60,
              left: 25,
            ),

            Column(
               children:[
                 //_imageBanner(),
                 _lottieAnimation(),
                 _textFielEmail(),
                 _textFielPassword(),
                 _buttonLogin(),
                 _textDontHaveAccount(),
              ],
            ),
          ],
        ),
      )
    
    );
}



//ORGANIZANDO EN METODOS

  Widget _textLogin(){
    return Text('LOGIN',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 22
      ),
    );
  }

  Widget _textDontHaveAccount(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(''
            '¿No tienes cuenta?',
          style: TextStyle(
            color: MyColors.primaryColor,
          ),
        ),
        SizedBox(width: 7),

        Text(
          'Registrate',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: MyColors.primaryColor,
          ),
        ),
      ],
    );
  }

  Widget _buttonLogin(){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: ElevatedButton(
          onPressed: () {},
          child: Text('INGRESAR'),
          style: ElevatedButton.styleFrom(
            primary: MyColors.primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
            ),
            padding: EdgeInsets.symmetric(vertical:15),
          ),
      ),

    );

  }

  Widget _circleLogin(){
    return Container(
      width: 240,
      height: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: MyColors.primaryColor
      ),
    );
  }

 Widget _imageBanner(){

    return  Container(
      margin: EdgeInsets.only(
          top:100,
          bottom: MediaQuery.of(context).size.height * 0.22
      ),

      child: Image.asset('assets/img/delivery.png',
        width: 200,
        height: 200,
      ),
    );
 }

 Widget _textFielEmail(){
    return Container(
      margin:EdgeInsets.symmetric(horizontal: 50,vertical: 30),
      decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
          decoration: InputDecoration(
            hintText: 'Correo electronico',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(
              color:MyColors.primaryColorDark
            ),
            prefixIcon: Icon(Icons.email,
            color: MyColors.primaryColor
            ),

        ),
      ),
    );
 }

  Widget _textFielPassword(){
    return Container(
      margin:EdgeInsets.symmetric(horizontal: 50,vertical: 5),
      decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Contraseña',
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
              color:MyColors.primaryColorDark
          ),
          prefixIcon: Icon(
              Icons.lock,
              color: MyColors.primaryColor
          ),

        ),
      ),
    );
  }

  Widget _lottieAnimation(){
  return Container(
    margin: EdgeInsets.only(
        top:150,
        bottom: MediaQuery.of(context).size.height * 0.17
    ),
    child: Lottie.asset(
        'assets/json/delivery.json',
         width: 350,
         height: 200,
         fit: BoxFit.fill
    ),
  );
  }
}