import 'package:flutter/material.dart';
import 'package:treeved/secondpage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  TabController? _tabController;
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
          SingleChildScrollView(
            child:

      Container(
        color:Colors.grey[100],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(Icons.menu, size: 35, color: Colors.indigo),
                SizedBox(
                  width: 310,
                ),
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      "https://cdn1.vectorstock.com/i/1000x1000/33/25/cartoon-young-man-icon-vector-12133325.jpg"),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Wrap(
                direction: Axis.vertical, //Vertical || Horizontal
                children: <Widget>[
                  Text(
                    'Thousands of cars',
                    style: TextStyle(
                      fontSize: 22,
                      color: Color.fromRGBO(46, 59, 110, 1),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'waiting for you',
                    style: TextStyle(
                      fontSize: 22,
                      color: Color.fromRGBO(46, 59, 110, 1),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Stack(children: [
              Positioned(
                  child: Padding(

                      padding: EdgeInsets.all(20),
                      child: Container(
                        decoration: new BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(10),
                        ),

                        height: 60,
                      ))),
              Positioned(
                top: 30,
                left: 20,
                child:InkWell(  onTap: () {
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Secondpage()),
  );
                  },child:
                 Container(
                  height: 40,
                  margin:EdgeInsets.only(left:10),
                  width: 80,

                  decoration: new BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // color: Colors.black26,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Rent',
                        style: TextStyle(color: Color(0xFF9C27B0)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(

                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/101.png'))))
                    ],
                  ),
                ),
              ),
              ),
              Positioned(
                  top: 20,
                  left: 110,
                    child:
                   Container(
                       margin:EdgeInsets.only(left:10),
                      width: 290.0,
                      height: 49,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Type city,neighborhood or address',
                        ),
                      ))),
            ]),
            Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(
                      15.0,
                    ),
                  ),
                  child: TabBar(
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(15), // Creates border
                        color: Colors.indigo),
                    indicatorColor: Colors.indigo,
                    unselectedLabelColor: Colors.grey,
                    labelColor: Colors.white,
                    tabs: [
                      Tab(
                        child: Text('Buy'),
                      ),
                      Tab(
                        child: Text(' Rent'),
                      ),
                      Tab(
                        child: Text(' Sell'),
                      )
                    ],
                    controller: _tabController,
                    indicatorSize: TabBarIndicatorSize.tab,
                  ),
                )),
                Container(
                height: 400,
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SingleChildScrollView(child: Column(children: [


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
                                  'https://c4.wallpaperflare.com/wallpaper/344/744/871/side-view-hypercar-divo-bugatti-divo-2019-bugatti-divo-hd-wallpaper-preview.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        )),
                        Positioned(
                            //  top: 10,
                            left: 15,
                            bottom: 10,
                            child: Container(
                                width: 49,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: Colors.indigo[500],
                                  borderRadius: BorderRadius.circular(15),
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
                                  color: Colors.indigo[500],
                                  borderRadius: BorderRadius.circular(10),
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
                      'Mazda CX-5',
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
                           // style: Theme.of(context).textTheme.body1


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
                // height: 400,
                // width: 500,
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(10),
                // ),
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
                                  'https://c4.wallpaperflare.com/wallpaper/344/744/871/side-view-hypercar-divo-bugatti-divo-2019-bugatti-divo-hd-wallpaper-preview.jpg'),
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
                      'Mazda CX-5',
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
                          //  style: Theme.of(context).textTheme.body1
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
                // height: 400,
                // width: 500,
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(10),
                // ),
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
                                  'https://c4.wallpaperflare.com/wallpaper/344/744/871/side-view-hypercar-divo-bugatti-divo-2019-bugatti-divo-hd-wallpaper-preview.jpg'),
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
                      'Mazda CX-5',
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
                           // style: Theme.of(context).textTheme.body1
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
                ]
                )
                )
                )],
        ),
      ),
          ), 
      Positioned(
          bottom: 0,
          left: 12,
          child: Container(
              height: 65, width: 400, child: _createBottomNavigationBar()))
    ]));
  }

  Widget _createBottomNavigationBar() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
        gradient: LinearGradient(
          colors: [Colors.indigoAccent, Colors.indigo],
          // begin: Alignment.topLeft,
          // end: Alignment.topRight,
        ),
      ),
      child: BottomNavigationBar(
        currentIndex: 1,
        onTap: (index) {},
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(color: Colors.white),
        items: [
          BottomNavigationBarItem(
            title: Text(
              'Explore',
              style: TextStyle(color: Colors.white),
            ),
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            title: Text(
              'Favorites',
              style: TextStyle(color: Colors.white),
            ),
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            title: Text(
              'Message',
              style: TextStyle(color: Colors.white),
            ),
            icon: Icon(Icons.sms_sharp),
          ),
          BottomNavigationBarItem(
            title: Text(
              'Profile',
              style: TextStyle(color: Colors.white),
            ),
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
