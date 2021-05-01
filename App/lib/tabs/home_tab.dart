import 'package:flutter/material.dart';
import 'package:loja_virtual/model/user_model.dart';
import 'package:loja_virtual/screens/login_screen.dart';
import 'package:loja_virtual/tabs/places_tab.dart';
import 'package:scoped_model/scoped_model.dart';

class HomeTab extends StatelessWidget {

  /*final PageController pageController;
  final int page;
  HomeTab(this.pageController, this.page);*/


  @override
  Widget build(BuildContext context) {

    Widget _buildBodyBack() => Container(
      decoration: BoxDecoration(
        color: Colors.black,
      ),
    );
    return ScopedModelDescendant<UserModel>(
        builder: (context, child, model){
          if(model.isLoading)
            return Center(child: CircularProgressIndicator(),);

          return Scaffold(
            /*appBar: AppBar(
              title: Text("Agendamento de Serviços"),
              centerTitle: true,
              backgroundColor: Color(0xFFCD853F),
              actions: [
                IconButton(
                  icon: Icon(Icons.exit_to_app),
                  onPressed: (){
                    model.signOut();
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => LoginScreen())
                    );
                  },
                )
              ],
            ),*/
            body: Container(
              color: Color(0xFFFFDEAD),
              child: ListView(
                children: [
                  Container(
                    color: Color(0xFFCD853F),
                    //mainAxisAlignment: MainAxisAlignment.start,
                    child: Padding(
                      padding: EdgeInsets.only(top: 5, left: 25, bottom: 15, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Olá, ${!model.isLoggedIn() ? "" : model.userData["name"]}",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          IconButton(
                            icon: Icon(Icons.exit_to_app),
                            color: Colors.white,
                            onPressed: (){
                              model.signOut();
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(builder: (context) => LoginScreen())
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 35),
                  Image.asset(
                    "images/logofinal.png",
                    height: 200,
                    width: 200,
                  ),
                  SizedBox(height: 40),
                  Container(
                    padding: EdgeInsets.only(right: 20, left: 20),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        stops: [0.5, 0.5],
                        colors: [
                          Color(0xFFCD853F),
                          Color(0xFF696969),
                        ],
                      ),
                    ),
                    child: Container(
                      height: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
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
                                "Unidade",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF696969),
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
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => PlacesTab())
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    padding: EdgeInsets.only(right: 20, left: 20),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        stops: [0.5, 0.5],
                        colors: [
                          Color(0xFFCD853F),
                          Color(0xFF696969),
                        ],
                      ),
                    ),
                    child: Container(
                      height: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
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
                                "Serviço",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF696969),
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
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    padding: EdgeInsets.only(right: 20, left: 20),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        stops: [0.5, 0.5],
                        colors: [
                          Color(0xFFCD853F),
                          Color(0xFF696969),
                        ],
                      ),
                    ),
                    child: Container(
                      height: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
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
                                "Barbeiro",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF696969),
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
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    padding: EdgeInsets.only(right: 20, left: 20),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        stops: [0.5, 0.5],
                        colors: [
                          Color(0xFFCD853F),
                          Color(0xFF696969),
                        ],
                      ),
                    ),
                    child: Container(
                      height: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
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
                                "Data e Hora",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF696969),
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
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
}
