import 'package:code_to_rule/About/About.dart';
import 'package:code_to_rule/ContactUs/ContactUS.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:code_to_rule/Services/Services.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

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
              margin: EdgeInsets.all(30),
              height: 500.0,
              child: ListView(
                children: [
                  CarouselSlider(
                    items: [
                      GestureDetector(
                       onTap: (){
                         setState(() {
                             Navigator.push(context, MaterialPageRoute(builder: (context) =>Services()),);
                         });
                       },
                        child: Container(
                          margin: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('images/Atonement1.jpg') // 2) Paste the 1st image name here
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('images/AChristmasCarol1.jpeg') // 2) Paste the 1st image name here
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('images/AnimalFarm1.jpeg') // 2) Paste the 1st image name here
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('images/CharlottesWeb1.jpeg') // 2) Paste the 1st image name here
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('images/Freaks1.jpeg') // 2) Paste the 1st image name here
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('images/HowToSpotAPsychopath1.jpg') // 2) Paste the 1st image name here
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('images/KimJiyoungBorn1982(1).jpeg') // 2) Paste the 1st image name here
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('images/TheGirlWhoCouldBreatheUnderWater1.jpg') // 2) Paste the 1st image name here
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('images/1984(1).jpeg') // 2) Paste the 1st image name here
                          ),
                        ),
                      ),
                    ],
                options: CarouselOptions(
                  height: 450.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 30),
                  viewportFraction: 0.7,
                ),
                  )
                ],
              ),
            ),
            Container(child: Text('Blog!',style: TextStyle(fontSize:40,color: Colors.black),),),
            SizedBox(
              height: 2,
              width: 30,
              child: Container(
                color: Colors.red,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(100, 60, 10, 15),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      child: SingleChildScrollView(
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                              height: 300,
                              width: 400,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fill,

                                      // todo 3) Paste the book cover image name here at line 113

                                      image: AssetImage('images/Atonement1.jpg')
                                  )
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              height: 300,
                              width: 800,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(child: SingleChildScrollView(child: Container(child: Text('Review: Atonement (Ian McEwan) ',style: TextStyle(fontSize:25,color: Colors.black,fontWeight: FontWeight.bold),),),),),
                                    SizedBox(
                                      height: 21,
                                      width: double.infinity,
                                    ),
                                    Container(child: SingleChildScrollView(child: Container(child: Text('03 Feb, 2022',style: TextStyle(fontSize:18,color: Colors.black,),),),),),
                                    SizedBox(
                                      height: 15,
                                      width: double.infinity,
                                    ),
                                    Container(child: SingleChildScrollView(child: Container(child: Text('With this, completing 5 of 339 from The Rory Gilmore Reading List. Do you know when people say that you are one person before you began reading a book and a different person after you finished reading that book? Yeah, I felt that with Atonement.',style: TextStyle(fontSize:18,color: Colors.black, ),),),),),
                                    SizedBox(
                                      height: 18,
                                      width: double.infinity,
                                    ),
                                    Container(child: SingleChildScrollView(child: Container(child: FlatButton(onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) =>Services()),);
                                    },
                                        child: Text('READ MORE....',style: TextStyle(fontSize:20,color: Colors.black,fontWeight: FontWeight.bold),)),),),),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 2,
              width: 1200,
              child: Container(
                color: Colors.grey,
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(100, 10, 10, 15),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      child: SingleChildScrollView(
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              height: 300,
                              width: 800,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(child: SingleChildScrollView(child: Container(child: Text('Review: A Christmas Carol (Charles Dickens) ',style: TextStyle(fontSize:25,color: Colors.black,fontWeight: FontWeight.bold),),),),),
                                    SizedBox(
                                      height: 21,
                                      width: double.infinity,
                                    ),
                                    Container(child: SingleChildScrollView(child: Container(child: Text('21 Dec, 2021',style: TextStyle(fontSize:18,color: Colors.black,),),),),),
                                    SizedBox(
                                      height: 15,
                                      width: double.infinity,
                                    ),
                                    Container(child: SingleChildScrollView(child: Container(child: Text('"I will live in the Past, the Present, and the Future." Are you a seasonal reader? Well, I never tried one for myself until now. This is my first introduction to Dickens\' work and I am certainly not stopping myself with a novella. A Christmas Carol was such a delightful read. No doubt it has sold so many copies.',style: TextStyle(fontSize:18,color: Colors.black, ),),),),),
                                    SizedBox(
                                      height: 18,
                                      width: double.infinity,
                                    ),
                                    Container(child: SingleChildScrollView(child: Container(child: Text('READ MORE....',style: TextStyle(fontSize:20,color: Colors.black,fontWeight: FontWeight.bold),),),),),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                              height: 300,
                              width: 400,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fill,

                                      // todo 3) Paste the book cover image name here at line 113

                                      image: AssetImage('images/AChristmasCarol1.jpeg')
                                  )
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
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










    //   Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: Colors.grey[50],
    //     actions: <Widget>[
    //       Container(
    //         height: 100,
    //         width: 100,
    //         decoration: BoxDecoration(
    //           image: DecorationImage(
    //             image: AssetImage('images/logo.png'),
    //             fit: BoxFit.cover,
    //           ),
    //         ),
    //         child: null /* add child content here */,
    //       ),
    //       Expanded(
    //        child: FlatButton(
    //          onPressed: (){
    //            Navigator.push(context, MaterialPageRoute(builder: (context) =>HomePage()),);
    //          },
    //          child: Text('Home',style:TextStyle(color: Colors.black),),
    //        ),
    //       ),
    //       Expanded(
    //         child: FlatButton(
    //           onPressed: (){
    //             Navigator.push(context, MaterialPageRoute(builder: (context) =>Services()),);
    //           },
    //           child: Text('Book Reviews',style:TextStyle(color: Colors.black),),
    //         ),
    //       ),
    //       Expanded(
    //         child: FlatButton(
    //           onPressed: (){
    //             Navigator.push(context, MaterialPageRoute(builder: (context) => About()),);
    //           },
    //           child: Text('About',style:TextStyle(color: Colors.black),),
    //         ),
    //       ),
    //       Expanded(
    //         child: FlatButton(
    //           onPressed: (){
    //             Navigator.push(context, MaterialPageRoute(builder: (context) =>ContactUs()),);
    //           },
    //           child: Text('Contact',style:TextStyle(color: Colors.black),),
    //         ),
    //       ),
    //     ],
    //   ),
    //   body: Stack(
    //     children: <Widget>[
    //       Container(
    //         decoration: BoxDecoration(
    //           image: DecorationImage(
    //             fit: BoxFit.fill,
    //             image: AssetImage('images/home.jpg')
    //           )
    //         ),
    //       ),
    //       Positioned(
    //         top: 130,
    //         right: 50,
    //         left: 50,
    //         bottom: 50,
    //         child: SingleChildScrollView(
    //           child: Column(
    //             children: <Widget>[
    //               Container(
    //                 margin: EdgeInsets.fromLTRB(30,0, 30,30),
    //                 child: Text('IF IT\'S DIGITAL\, WE CODE IT',style: TextStyle(color: Colors.white,fontSize:60),),
    //               ),
    //               Container(
    //                 margin: EdgeInsets.fromLTRB(30,0, 30,30),
    //                 child: Column(
    //                   children: <Widget>[
    //                     Container(
    //                       child: Text('An Inovative web & mobile app development agency online, specialising in mobile app',style: TextStyle(color: Colors.white,fontSize:20),),
    //                     ),
    //                     Container(
    //                       child: Text('and website development. We work with businesses and entrepreneurs of all shapes',style: TextStyle(color: Colors.white,fontSize:20),),
    //                     ),
    //                     Container(
    //                       child: Text('and sizes and we’d love partnering with you to help market your brand online.',style: TextStyle(color: Colors.white,fontSize:20),),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //               Container(
    //                 margin: EdgeInsets.fromLTRB(130,10, 130,0),
    //                 child: Row(
    //                   children: <Widget>[
    //                     Expanded(
    //                       child: Opacity(
    //                         opacity: 0.7,
    //                         child: Container(
    //                           height: 50,
    //                           decoration: BoxDecoration(
    //                             color: Colors.grey[50],
    //                             borderRadius: BorderRadius.circular(10)
    //                           ),
    //                           child: FlatButton(
    //                             onPressed: (){
    //                               Navigator.push(context, MaterialPageRoute(builder: (context) => PortFolio()),);
    //                             },
    //                             child: Text('VIEW OUR PORTFOLIO',style: TextStyle(color: Colors.black),),
    //                           ),
    //                         ),
    //                       ),
    //                     ),
    //                     SizedBox(
    //                       height: 0,
    //                       width: 50,
    //                     ),
    //                     Expanded(
    //                       child: Opacity(
    //                         opacity: 0.7,
    //                         child: Container(
    //                           height: 50,
    //                           decoration: BoxDecoration(
    //                               color: Colors.grey[50],
    //                               borderRadius: BorderRadius.circular(10)
    //                           ),
    //                           child: FlatButton(
    //                             onPressed: (){
    //                               Navigator.push(context, MaterialPageRoute(builder: (context) => Services()),);
    //                             },
    //                             child: Text('REQUEST A SERVICE',style: TextStyle(color: Colors.black),),
    //                           ),
    //                         ),
    //                       ),
    //                     )
    //                   ],
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
