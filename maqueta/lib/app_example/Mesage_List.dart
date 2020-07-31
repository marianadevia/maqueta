import 'package:flutter/material.dart';


class MessageList extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista"),
      ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
              padding: EdgeInsets.all(0),
              children: [
                ListTile(
                    leading: CircleAvatar(  child: Text("1"), ),
                    title: Text("Item 1"),
                    onTap: (){},              
                ),
                ListTile(
                    leading: CircleAvatar(  child: Text("2"), ),
                    title: Text("Item 2"),
                    onTap: (){},              
                ),
                ListTile(
                    leading: CircleAvatar(  child: Text("3"), ),
                    title: Text("Item 3"),
                    onTap: (){
                      showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                      elevation: 16,
                      child: Container(
                        height: 400.0,
                        width: 360.0,
                        child: ListView(
                          children: <Widget>[
                            SizedBox(height: 20),
                            Center(
                              child: Text(
                                "Mensaje",
                                //style: TextStyle(fontSize: 24, color: Colors.blue, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: 20),
                            
                          ],
                        ),
                      ),
                    );
                  },
                );
      
                    },              
                ),
                ListTile(
                    leading: CircleAvatar(  child: Text("4"), ),
                    title: Text("Item 4"),
                    onTap: (){},              
                ),
                ListTile(
                    leading: CircleAvatar(  child: Text("5"), ),
                    title: Text("Item 5"),
                    onTap: (){},              
                ),
                ListTile(
                    leading: CircleAvatar(  child: Text("6"), ),
                    title: Text("Item 6"),
                    onTap: (){},              
                ),
              ]
              ),
            ),
            Container(                  
                  
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Mostrar'),
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => MessageList()),
  );
                        
                      },
                    )),
          ],
        )
      
     );
  }
}

