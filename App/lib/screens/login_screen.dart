import 'package:flutter/material.dart';
import 'package:loja_virtual/model/user_model.dart';
import 'package:loja_virtual/tabs/home_tab.dart';
import 'package:scoped_model/scoped_model.dart';
import 'criarconta_screen.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
        body: ScopedModelDescendant<UserModel>(
          builder: (context, child, model){
            if(model.isLoading)
              return Center(child: CircularProgressIndicator(),);

            return Container(
              padding: EdgeInsets.only(top: 60, right: 20, left: 20),
              color: Colors.white,
              child: Form(
                key: _formKey,
                child: ListView(
                  children: [
                    SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        "images/logofinal.png",
                      ),
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        hintText: "E-mail",
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (text){
                        // ignore: missing_return
                        if(text.isEmpty || !text.contains("@")) return "E-mail inválido";
                      },
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      controller: _passController,
                      decoration: InputDecoration(
                        hintText: "Senha",
                      ),
                      obscureText: true,
                      // ignore: missing_return
                      validator: (text){
                        if(text.isEmpty || text.length < 6) return "Senha inválido";
                      },
                    ),
                    Container(
                      height: 40,
                      alignment: Alignment.centerRight,
                      child: FlatButton(
                        onPressed: (){
                          if(_emailController.text.isEmpty){
                            _scaffoldKey.currentState.showSnackBar(
                              SnackBar(
                                content: Text("O campo e-mail não pode estar em branco!"),
                                backgroundColor: Colors.redAccent,
                                duration: Duration(seconds: 2),
                              ),
                            );
                          }else{
                            model.recoverPass(_emailController.text);
                            _scaffoldKey.currentState.showSnackBar(
                              SnackBar(
                                content: Text("E-mail de recuperação enviado para ${_emailController.text}"),
                                backgroundColor: Theme.of(context).primaryColor,
                                duration: Duration(seconds: 2),
                              ),
                            );
                          }
                        },
                        child: Text(
                          "Recuperar senha",
                          textAlign: TextAlign.right,
                        ),
                        textColor: Colors.black,
                      ),
                    ),
                    SizedBox(height: 16),
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
                                "Entrar",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Container(
                                child: SizedBox(
                                  child: Image.asset("images/lamina1.png"),
                                  height: 28,
                                  width: 28,
                                ),
                              ),
                            ],
                          ),
                          onPressed: (){
                            if(_formKey.currentState.validate()){
                              model.signIn(email: _emailController.text, pass: _passController.text, onSuccess: _onSuccess, onFail: _onFail);

                              /*Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (context) => HomeScreen())
                            );*/
                              //model.signIn();
                            }
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      height: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xFF3C5A99),
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
                                "Entrar com Facebook",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Container(
                                child: SizedBox(
                                  child: Image.asset("images/navalha.png"),
                                  height: 28,
                                  width: 28,
                                ),
                              ),
                            ],
                          ),
                          onPressed: (){

                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
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
                                "Criar Conta",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Container(
                                child: SizedBox(
                                  child: Image.asset("images/barbeiro.png"),
                                  height: 28,
                                  width: 28,
                                ),
                              ),
                            ],
                          ),
                          onPressed: (){
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (context) => CriarContaScreen())
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        )
    );
  }

  void _onSuccess(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomeTab())
    );
  }

  void _onFail(){
    _scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content: Text("Falha ao entrar!"),
        backgroundColor: Colors.redAccent,
        duration: Duration(seconds: 2),
      ),
    );
  }
}
