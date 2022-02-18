import 'package:code_to_rule/About/About.dart';
import 'package:code_to_rule/ContactUs/ContactUS.dart';
import 'package:code_to_rule/HomePage/HomePage.dart';
import 'package:code_to_rule/Services/Services.dart';
import 'package:flutter/material.dart';

class PortFolio extends StatefulWidget {
  @override
  _PortFolioState createState() => _PortFolioState();
}

class _PortFolioState extends State<PortFolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        actions: <Widget>[
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/logo.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: null /* add child content here */,
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>HomePage()),);
              },
              child: Text('Home',style:TextStyle(color: Colors.black),),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>Services()),);
              },
              child: Text('Book Reviews',style:TextStyle(color: Colors.black),),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => About()),);
              },
              child: Text('About',style:TextStyle(color: Colors.black),),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>ContactUs()),);
              },
              child: Text('Contact',style:TextStyle(color: Colors.black),),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(50),
              height: 450,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('images/port.jpg')
                  )
              ),
            ),
            Container(child: Text('PORTFOLIO',style: TextStyle(fontSize:40,color: Colors.black),),),
            SizedBox(
              height: 2,
              width: 30,
              child: Container(
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
