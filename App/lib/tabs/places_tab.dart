import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:loja_virtual/screens/home_screen.dart';
import 'package:loja_virtual/tabs/home_tab.dart';
import 'package:loja_virtual/tile/place_tile.dart';

class PlacesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: Firestore.instance.collection("places").getDocuments(),
      builder: (context, snapshot){
        if(!snapshot.hasData){
          return Center(
            child: CircularProgressIndicator(),
          );
        }else{
          return Scaffold(
            appBar: AppBar(
              title: Text("Unidades"),
              centerTitle: true,
              backgroundColor: Color(0xFFCD853F),
            ),
            body: Container(
              color: Color(0xFFFFDEAD),
              child: ListView(
                children: snapshot.data.documents.map((doc) => PlaceTile(doc)).toList(),
              ),
            ),
            bottomNavigationBar: Container(
              height: 50,
              alignment: Alignment.center,
              child: FlatButton(
                onPressed: (){
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => HomeTab())
                  );
                },
                child: Text(
                  "Cancelar",
                  textAlign: TextAlign.center,
                ),
                textColor: Colors.black,
              ),
            ),
          );
        }
      },
    );
  }
}
