import 'package:code_to_rule/HomePage/HomePage.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}
class _LandingPageState extends State<LandingPage> {


  goToHomepage()async {
    Route route = await Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),);
    return route ;
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.cyanAccent[100],
      body: Stack(
        children: [
          Opacity(
            opacity: 0.8,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage('images/landingPage2.jpg')
                )
              ),
            ),
          ),
          Positioned(
            top: 80,
            bottom: 80,
            right: 80,
            left: 80,
            child: Opacity(
              opacity: 0.9,
              child: Container(
                color: Colors.white,
                height: 600,
                width: 600,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        color:Colors.white,
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.fromLTRB(50,30,50,0),
                                  child: Text('We Code',style: TextStyle(color: Colors.red[900],fontSize: 50),)),
                              Container(
                                  margin: EdgeInsets.fromLTRB(50,0,50,10),
                                  child: Text('Your Dreams',style: TextStyle(color: Colors.red[900],fontSize: 50),)),
                              Container(
                                margin: EdgeInsets.fromLTRB(50,10, 30, 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('With more than years of web development & mobile App development experience',style: TextStyle(fontSize:13),),
                                    Text('we here at Codetorule.tech are experts in developing websites & mobile Apps',style: TextStyle(fontSize: 13),),
                                    Text('that provide excelent user experience and are easy to manage. Our Content Management',style: TextStyle(fontSize: 13),),
                                    Text('System (CMS) is easy to use.Take a look at all we have to offer you when it comes to development.',style: TextStyle(fontSize: 13),),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(50,10, 30, 10),
                                height: 50,
                                width: 200,
                                decoration: BoxDecoration(
                                  color: Colors.red[900],
                                  borderRadius: BorderRadius.circular(25)
                                ),
                                  child: FlatButton(
                                    onPressed: goToHomepage,
                                  child: Text('Learn More',style:TextStyle(color: Colors.white),),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/codeing.jpg')
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
