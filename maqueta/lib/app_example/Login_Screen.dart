import 'package:flutter/material.dart';
import 'package:maqueta/app_example/Mesage_List.dart';


class LoginPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child:Text("Usuario")
                ),
                Container(
                  width: 300,
                  alignment: Alignment.center,
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  alignment: Alignment.bottomCenter,
                  child:Text("Contraseña")
                ),
                Container(
                  width: 300,
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  
                ),
                Container(                  
                    padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Login'),
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => MessageList()),
  );
                        
                      },
                    )),
                
              ],
            )));
  }
}