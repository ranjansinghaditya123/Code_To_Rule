import 'dart:ui';
import 'package:code_to_rule/About/About.dart';
import 'package:code_to_rule/ContactUs/ContactUS.dart';
import 'package:code_to_rule/Portfolio/PortFolio.dart';
import 'package:code_to_rule/Services/Services.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('images/home.jpg')
              )
            ),
          ),
          Positioned(
            top: 130,
            right: 50,
            left: 50,
            bottom: 50,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(30,0, 30,30),
                    child: Text('IF IT\'S DIGITAL\, WE CODE IT',style: TextStyle(color: Colors.white,fontSize:60),),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(30,0, 30,30),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Text('An Inovative web & mobile app development agency online, specialising in mobile app',style: TextStyle(color: Colors.white,fontSize:20),),
                        ),
                        Container(
                          child: Text('and website development. We work with businesses and entrepreneurs of all shapes',style: TextStyle(color: Colors.white,fontSize:20),),
                        ),
                        Container(
                          child: Text('and sizes and we’d love partnering with you to help market your brand online.',style: TextStyle(color: Colors.white,fontSize:20),),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(130,10, 130,0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Opacity(
                            opacity: 0.7,
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.grey[50],
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: FlatButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => PortFolio()),);
                                },
                                child: Text('VIEW OUR PORTFOLIO',style: TextStyle(color: Colors.black),),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0,
                          width: 50,
                        ),
                        Expanded(
                          child: Opacity(
                            opacity: 0.7,
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.grey[50],
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: FlatButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Services()),);
                                },
                                child: Text('REQUEST A SERVICE',style: TextStyle(color: Colors.black),),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
