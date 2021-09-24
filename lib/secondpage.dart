import 'package:flutter/material.dart';
import 'package:treeved/filterlist.dart';

class Secondpage extends StatefulWidget {
  

  @override
  _SecondpageState createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Padding(padding: EdgeInsets.only(left: 15),child:
            Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
                child: Row(
                  children: [
                    InkWell(
                       onTap: () {
     Navigator.pop(context);
                },child:
                    Icon(Icons.arrow_back,color: Colors.indigo,)
                    ),
                    Text('Tesela model',style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 20),),
                    SizedBox(width: 200,),
                    Icon(Icons.cancel,color: Colors.indigo,)
                  ],
                ),

            )
            ),
            Container(height: 100,width: 400,child: 
            Stack(
              children: [
                Positioned(top: 10,
                  left: 10,
                  child: Wrap(
  direction: Axis.vertical, //Vertical || Horizontal
  children: <Widget>[
    Text(
      'Showing Results',
      style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 15),
    ),
    Text(
      '94 matches found',
      style: TextStyle(color: Colors.grey),
    ),
  ],
),),
Positioned(top: 10,
right: 10,
  child:  Container(
              height: 40.0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.indigo)),
                onPressed: () {
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Filterlist()),
  );
                },
                color: Colors.white,
                
                textColor: Colors.indigo,
                child:  Row( // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Icon(Icons.filter_list,color: Colors.indigo,),
                    Text("Fillter",
                    style: TextStyle(fontSize: 15)),
                  ],
                )
                
              ),
            ))
              ],
            )
            ),
            Padding(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Container(
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Positioned(
                          child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://cdn.luxe.digital/media/2020/12/15110747/fastest-cars-world-2021-luxe-digital%402x.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      )),
                      Positioned(
                          //  top: 10,
                          left: 15,
                          bottom: 10,
                          child: Container(
                              width: 47,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.indigo[200],
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(top: 5, left: 8),
                                child: Text(
                                  '1/34',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ))),
                      Positioned(
                          //  top: 10,
                          right: 15,
                          bottom: 10,
                          child: Container(
                              width: 70,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.indigo[200],
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(top: 5, left: 8),
                                child: Text(
                                  '\$340,000',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ))),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                          width: 60,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.indigo[200],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 5, left: 8),
                            child: Text(
                              'OnSale',
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                          width: 85,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.indigo[200],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 5, left: 8),
                            child: Text(
                              'Instalment',
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                      SizedBox(
                        width: 190,
                      ),
                      Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                      )
                    ],
                  ),
                  Text(
                    'Tesla 5',
                    style: TextStyle(color: Colors.indigo),
                  ),
                  RichText(
                    text: TextSpan(children: [
                      WidgetSpan(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),
                          child: Icon(Icons.location_on_outlined),
                        ),
                      ),
                      TextSpan(
                          text: '1901 Thornridge cir.Shiloh,Hawaii 81063',style:TextStyle(color:Colors.black),
                          //style: Theme.of(context).textTheme.body1
                      )
                    ]),
                  ),
                  Divider(color: Colors.black54),
                  Text(
                    'view details',
                    style: TextStyle(color: Colors.indigo),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Container(
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Positioned(
                          child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://cdn.luxe.digital/media/2020/12/15110730/fastest-cars-world-2021-hennessey-venom-GT-luxe-digital%402x.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      )),
                      Positioned(
                          //  top: 10,
                          left: 15,
                          bottom: 10,
                          child: Container(
                              width: 47,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.indigo[200],
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(top: 5, left: 8),
                                child: Text(
                                  '1/34',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ))),
                      Positioned(
                          //  top: 10,
                          right: 15,
                          bottom: 10,
                          child: Container(
                              width: 70,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.indigo[200],
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(top: 5, left: 8),
                                child: Text(
                                  '\$340,000',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ))),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                          width: 60,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.indigo[200],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 5, left: 8),
                            child: Text(
                              'OnSale',
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                          width: 85,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.indigo[200],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 5, left: 8),
                            child: Text(
                              'Instalment',
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                      SizedBox(
                        width: 190,
                      ),
                      Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                      )
                    ],
                  ),
                  Text(
                    'Tesla Model 3',
                    style: TextStyle(color: Colors.indigo),
                  ),
                  RichText(
                    text: TextSpan(children: [
                      WidgetSpan(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),
                          child: Icon(Icons.location_on_outlined),
                        ),
                      ),
                      TextSpan(
                          text: '1901 Thornridge cir.Shiloh,Hawaii 81063',
                          //style: Theme.of(context).textTheme.body1
                      )
                    ]),
                  ),
                  Divider(color: Colors.black54),
                  Text(
                    'view details',
                    style: TextStyle(color: Colors.indigo),
                  )
                ],
              ),
            ),
          ),
          


          ],
        ),
      )
      
    );
  }
}