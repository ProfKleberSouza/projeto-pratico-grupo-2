import 'package:flutter/material.dart';
import 'package:loja_virtual/model/user_model.dart';
import 'package:loja_virtual/screens/home_screen.dart';
import 'package:loja_virtual/screens/login_screen.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<UserModel>(
        model: UserModel(),
        child: MaterialApp(
          title: 'Barbearia',
          theme: ThemeData(
            primarySwatch: Colors.amber,
            primaryColor: Color(0xFF696969),//Colors.amber,
          ),
          debugShowCheckedModeBanner: false,
          home: Splash(),
          //home: HomeScreen(),
        ),
    );
  }
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      /*decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.3, 1],
          colors: [
            Color(0xFFCD853F),
            Color(0xFF696969),
          ],
        ),
      ),*/
      child: Image.asset("images/logofinal.png", height: 800, width: 800,),
    );
  }

  @override
  void initState() {
    super.initState();
    
    Future.delayed(Duration(seconds: 3)).then((_){
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginScreen())
      );
    });
  }
}