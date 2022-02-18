import 'package:code_to_rule/Portfolio/PortFolio.dart';
import 'package:code_to_rule/Services/Services.dart';
import 'package:flutter/material.dart';
import 'package:code_to_rule/HomePage/HomePage.dart';
import 'package:code_to_rule/About/About.dart';
import 'package:url_launcher/link.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
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
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('images/contactimg.jpg')
                  )
              ),
            ),
            Container(child: Text('Thank You for visiting my blog!',style: TextStyle(fontSize:40,color: Colors.black),),),
            SizedBox(
              height: 2,
              width: 250,
              child: Container(
                color: Colors.red,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(50,10,50,10),
              child: Text('If you wish to contact me regarding any of my posts or bookish queries feel free to contact me. I would love to work with author, publishers and brands (Please note : I do not read erotica). If you are interested in any such collaboration, kindly fill up the below form or drop me an email at',style: TextStyle(
                fontSize: 20,
              ),),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(50,0,50,10),
              child: Text('Email : nasreennajeefa08@gmail.com',style: TextStyle(
                fontSize: 30,
              ),),
            ),
            Link(
              target: LinkTarget.blank,
              uri: Uri.parse('https://forms.gle/HwbCrrczEG32Duuu9'),
              builder: (context, followlink)=> Container(
                margin: EdgeInsets.fromLTRB(0,10, 30, 10),
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.red[900],
                    borderRadius: BorderRadius.circular(25)
                ),
                child: FlatButton(
                  onPressed: followlink,
                  child: Text('Fill The Form !',style:TextStyle(color: Colors.white),),
                ),
              ),
            ),
            Container(
              height: 65,
              width: double.infinity,
              color: Colors.redAccent,
              child:Row(
                children: [
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse('https://www.goodreads.com/user/show/143571485-najeefa-nasreen'),
                    builder: (context, followlink)=> Container(
                      margin: EdgeInsets.fromLTRB(485,10, 30, 10),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('images/goodreads.png')
                          ),
                          borderRadius: BorderRadius.circular(13)
                      ),
                      child: FlatButton(
                        onPressed: followlink,
                      ),
                    ),
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse('https://forms.gle/HwbCrrczEG32Duuu9'),
                    builder: (context, followlink)=> Container(
                      margin: EdgeInsets.fromLTRB(10,10, 30, 10),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('images/instagram.png')
                          ),
                          borderRadius: BorderRadius.circular(13)
                      ),
                      child: FlatButton(
                        onPressed: followlink,
                      ),
                    ),
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse('https://forms.gle/HwbCrrczEG32Duuu9'),
                    builder: (context, followlink)=> Container(
                      margin: EdgeInsets.fromLTRB(10,10, 30, 10),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('images/twitter.png')
                          ),
                          borderRadius: BorderRadius.circular(13)
                      ),
                      child: FlatButton(
                        onPressed: followlink,
                      ),
                    ),
                  ),Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse('https://app.thestorygraph.com/profile/thepageunfolds'),
                    builder: (context, followlink)=> Container(
                      margin: EdgeInsets.fromLTRB(10,10, 30, 10),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('images/storygraph.png')
                          ),
                          borderRadius: BorderRadius.circular(13)
                      ),
                      child: FlatButton(
                        onPressed: followlink,
                      ),
                    ),
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse('https://pin.it/3jT3plM'),
                    builder: (context, followlink)=> Container(
                      margin: EdgeInsets.fromLTRB(10,10, 30, 10),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('images/pinterest.png')
                          ),
                          borderRadius: BorderRadius.circular(13)
                      ),
                      child: FlatButton(
                        onPressed: followlink,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
