
import 'package:code_to_rule/ContactUs/ContactUS.dart';
import 'package:code_to_rule/Portfolio/PortFolio.dart';
import 'package:code_to_rule/Services/Services.dart';
import 'package:flutter/material.dart';
import 'package:code_to_rule/HomePage/HomePage.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/link.dart';



class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
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
                  image: AssetImage('images/aboutt.jpg')
                )
              ),
            ),
            Container(child: Text('ABOUT',style: TextStyle(fontSize:40,color: Colors.black),),),
            SizedBox(
              height: 2,
              width: 50,
              child: Container(
                color: Colors.red,
              ),
            ),
      Container(
        margin: EdgeInsets.fromLTRB(50,10,50,10),
        child: Text('Hi,'
          ,style: TextStyle(
            fontSize: 20,
          ),),
      ),
            Container(
              margin: EdgeInsets.fromLTRB(50,10,50,10),
              child: Text('I am Najeefa. I hope you are all enjoying your current reads! Welcome to The Page Unfolds,'
                  'my little space where I talk about my love for books and share my experiences as I read. '
                ,style: TextStyle(
                  fontSize: 20,
                ),),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(50,10,50,10),
              child: Text('I am a huge book lover. My passion for reading and sharing my thoughts on the same are the '
              'reasons why I decided to create this little space on internet where all I do is talk about books. Thus, thepageunfolds  was born. Since I started I have never looked back. '
                ,style: TextStyle(
                  fontSize: 20,
                ),),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(50,10,50,10),
              child: Text('Although my favorite genre is fantasy, I keep myself indulged in reading from other genres (YA, SciFi, Urban Fantasy, Romance, Historical Fiction, Non-Fiction etc) '
                  'to keep my reading diverse. To those who are really in need of some serious good reading, stay tuned for amazing bookish recommendations. Thank you so much for passing through and I hope you enjoy reading all the content on The Page Unfolds. ,'
                ,style: TextStyle(
                  fontSize: 20,
                ),),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(50,10,50,10),
              child: Text(
                'Happy reading!'
                ,style: TextStyle(
                fontSize: 20,
              ),),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(50,0,50,10),
              child: Text('Email : nasreennajeefa08@gmail.com',style: TextStyle(
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
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>ContactUs()),);
                },
                child: Text('Contact Me',style:TextStyle(color: Colors.white),),
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


