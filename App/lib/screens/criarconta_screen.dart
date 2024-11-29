import 'package:flutter/material.dart';
import 'package:loja_virtual/model/user_model.dart';
import 'package:loja_virtual/screens/home_screen.dart';
import 'package:loja_virtual/screens/login_screen.dart';
import 'package:loja_virtual/tabs/home_tab.dart';
import 'package:scoped_model/scoped_model.dart';

class CriarContaScreen extends StatefulWidget {
  @override
  _CriarContaScreenState createState() => _CriarContaScreenState();
}

class _CriarContaScreenState extends State<CriarContaScreen> {
  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  final _telefoneController = TextEditingController();
  final _pass1Controller = TextEditingController();
  final _pass2Controller = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<UserModel>(
      builder: (context, child, model){
        if(model.isLoading)
          return Center(child: CircularProgressIndicator(),);

        return Scaffold(
          key: _scaffoldKey,
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.05, 0.3],
                colors: [
                  Color(0xFFCD853F),
                  Color(0xFFFFFFFF),
                ],
              ),
            ),
            padding: EdgeInsets.only(top: 40, right: 20, left: 20),
            //color: Color(0xFFFFDEAD),
            child: Form(
              key: _formKey,
              child: ListView(
                children: [
                  Container(
                    height: 60,
                    alignment: Alignment.center,
                    child: Text(
                      "MEUS DADOS",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 40),
                  TextFormField(
                    controller: _nomeController,
                    decoration: InputDecoration(
                      hintText: "Nome",
                    ),
                    validator: (text){
                      if(text.isEmpty) return "Nome inválido";
                    },
                  ),
                  SizedBox(height: 25),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: "E-mail",
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (text){
                      if(text.isEmpty || !text.contains("@")) return "E-mail inválido";
                    },
                  ),
                  SizedBox(height: 25),
                  TextFormField(
                    controller: _telefoneController,
                    decoration: InputDecoration(
                      hintText: "Telefone",
                    ),
                    keyboardType: TextInputType.phone,
                    validator: (text){
                      if(text.isEmpty) return "E-mail inválido";
                    },
                  ),
                  SizedBox(height: 25),
                  TextFormField(
                    controller: _pass1Controller,
                    decoration: InputDecoration(
                      hintText: "Senha",
                    ),
                    obscureText: true,
                    validator: (text){
                      if(text.isEmpty || text.length < 6) return "Senha inválido";
                    },
                  ),
                  /*SizedBox(height: 16),
                  TextFormField(
                    controller: _pass2Controller,
                    decoration: InputDecoration(
                      hintText: "Confirmar senha",
                    ),
                    obscureText: true,
                    validator: (text){
                      if(text.isEmpty || text.length < 6) return "Senha inválido";
                    },
                  ),*/
                ],
              ),
            ),
          ),
          bottomNavigationBar: Container(
            padding: EdgeInsets.only(right: 20, left: 20, bottom: 50),
            height: 200,
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.3, 1],
                      colors: [
                        Color(0xFFCD853F),
                        Color(0xFF696969),
                      ],
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: SizedBox.expand(
                    child: FlatButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Cadastrar",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Container(
                            child: SizedBox(
                              child: Image.asset("images/tesouras.png"),
                              height: 28,
                              width: 28,
                            ),
                          ),
                        ],
                      ),
                      onPressed: (){
                        if(_formKey.currentState.validate()){
                          Map<String, dynamic> userData = {
                            "name": _nomeController.text,
                            "email": _emailController.text,
                            "phone": _telefoneController.text,
                          };

                          model.signUp(userData: userData, pass: _pass1Controller.text, onSuccess: _onSuccess, onFail: _onFail);
                        }
                      },
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  child: FlatButton(
                    onPressed: (){
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => LoginScreen())
                      );
                    },
                    child: Text(
                      "Cancelar",
                      textAlign: TextAlign.center,

                    ),
                    textColor: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _onSuccess(){
    _scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content: Text("Usuário criado com sucesso!"),
        backgroundColor: Theme.of(context).primaryColor,
        duration: Duration(seconds: 2),
      ),
    );
    Future.delayed(Duration(seconds: 2)).then((_){
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HomeTab())
      );
      //Navigator.of(context).pop();
    });
  }

  void _onFail(){
    _scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content: Text("Falha ao criar usuário!"),
        backgroundColor: Colors.redAccent,
        duration: Duration(seconds: 2),
      ),
    );
  }
}
