
import 'package:code_to_rule/ContactUs/ContactUS.dart';
import 'package:code_to_rule/Portfolio/PortFolio.dart';
import 'package:code_to_rule/Services/Services.dart';
import 'package:flutter/material.dart';
import 'package:code_to_rule/HomePage/HomePage.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.grey[50],
        actions: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),);
              },
              child: Image(
                image: AssetImage('images/logo.png'),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>About()),);
              },
              child: Text('ABOUT',style:TextStyle(color: Colors.black),),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>Services()),);
              },
              child: Text('SERVICES',style:TextStyle(color: Colors.black),),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PortFolio()),);
              },
              child: Text('PORTFOLIO',style:TextStyle(color: Colors.black),),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>ContactUs()),);
              },
              child: Text('CONTACTUS',style:TextStyle(color: Colors.black),),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(50),
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('images/about.jpg')
                )
              ),
            ),
            Container(child: Text('ABOUT',style: TextStyle(fontSize:40,color: Colors.black),),),
            SizedBox(
              height: 2,
              width: 30,
              child: Container(
                color: Colors.red,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(50,10,50,10),
              child: Text('Code to rule aims to rule customers heart by bringing their fascinations to'
                  ' reality by designing and coding whatever they desire and then present to them '
                  'their website and apps in minimum shortest time possible. '
                  'We value our customers their satisfaction is our success. We try to bring our services at minimum price'
                  'You can also contact us through our contact us page.'
                  'Feel free to dream we coders are there to shape your imagination into reality through our highly efficient programming skills. ',style: TextStyle(
                fontSize: 20,
              ),),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(50,0,50,10),
              child: Text('Email : codetoorule@gmail.com',style: TextStyle(
                fontSize: 30,
              ),),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(50,0,50,10),
              child: Text('Phone : +91 8250641627 / +91 7001089091',style: TextStyle(
                fontSize: 30,
              ),),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(50,0,50,10),
              child: Text('Whatsapp : +91 7001089091 / +91 9734293496 ',style: TextStyle(
                fontSize: 30,
              ),),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0,10, 30, 10),
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.red[900],
                  borderRadius: BorderRadius.circular(25)
              ),
              child: FlatButton(
                child: Text('Learn More',style:TextStyle(color: Colors.white),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
