import 'package:code_to_rule/About/About.dart';
import 'package:code_to_rule/ContactUs/ContactUS.dart';
import 'package:code_to_rule/HomePage/HomePage.dart';
import 'package:code_to_rule/Portfolio/PortFolio.dart';
import 'package:flutter/material.dart';

class Services extends StatefulWidget {
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
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
                      image: AssetImage('images/service.jpg')
                  )
              ),
            ),
            Container(child: Text('SERVICES',style: TextStyle(fontSize:40,color: Colors.black),),),
            SizedBox(
              height: 2,
              width: 30,
              child: Container(
                color: Colors.red,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(50, 10, 50, 10),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ListTile(
                    title: Container(
                      margin: EdgeInsets.all(10),
                        child: Text('Website Development',style: TextStyle(color: Colors.black,fontSize: 25),)),
                    subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('We design both static and dynamic websites for a very genuine price.'
                            'Websites designed by us always have a standard user interface and are robust and highly'
                            'efficient and compatible for every screen size. We design a variety of websites'
                            'and at the same time we provide website / App maintenance services, and even provide hosting services. '),
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
                  ),
                  Expanded(
                    child: ListTile(
                      title: Container(
                          margin: EdgeInsets.all(10),
                          child: Text('Mobile Application Development',style: TextStyle(color: Colors.black,fontSize: 25),)),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('We develop mobile applications for both ios and Android platform.'
                              'We design user interfaces,front end as well as backend, admin panel and a'
                              'fully functional apps. We even  post the apps on Google playstore for the customers'
                              'and at the same time we provide website / App maintenance services, and even provide hosting services.'),
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
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
