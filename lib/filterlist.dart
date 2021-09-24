import 'package:flutter/material.dart';

class Filterlist extends StatefulWidget {
  @override
  _FilterlistState createState() => _FilterlistState();
}

class _FilterlistState extends State<Filterlist>with TickerProviderStateMixin  {
  TabController? _tabController;
   RangeValues _currentRangeValues = const RangeValues(40, 80);
  void initState() {
    _tabController = new TabController(length: 5, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 40,
          ),
          Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child:Padding(padding: EdgeInsets.only(left: 15),child: 
                         Icon(
                          Icons.close,
                          color: Colors.black54,
                        )),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      'filters',
                      style: TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      width: 170,
                    ),
                    Icon(
                      Icons.cancel,
                      color: Colors.indigo,
                    )
                  ],
                ),
              )),
          SizedBox(
            height: 10,
          ),
          Text(
            'Preferred Model',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 60.0,
                width: 60.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(color: Colors.indigo)),
                  onPressed: () {},
                  padding: EdgeInsets.all(10.0),
                  color: Colors.indigo,
                  textColor: Colors.white,
                  child: Text("All", style: TextStyle(fontSize: 15)),
                ),
              ),
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Volkswagen_logo_2019.svg/1200px-Volkswagen_logo_2019.svg.png',
                    ),
                    fit: BoxFit.contain,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://w7.pngwing.com/pngs/272/423/png-transparent-2017-tesla-model-x-tesla-motors-iphone-x-car-tesla-angle-logo-monochrome.png',
                    ),
                    fit: BoxFit.contain,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://www.cnet.com/a/img/hl4sFFVzIsZ8TeVcsvz9Z3y92ys=/1200x675/2021/01/06/19ab53c1-6b8d-4f44-a89a-b84fc7f825e8/ogi-kia.jpg',
                    ),
                    fit: BoxFit.contain,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://www.carlogos.org/logo/Renault-logo-2015-2048x2048.png',
                    ),
                    fit: BoxFit.contain,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Vechile Type',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Container(
                      height: 35,
                      width: 65,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black54)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'SUV',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ))),
              Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Container(
                      height: 35,
                      width: 95,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.indigo)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Hatchback',
                          style: TextStyle(color: Colors.indigo),
                        ),
                      ))),
              Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Container(
                      height: 35,
                      width: 95,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black54)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Plug-in HYbrid',
                          style: TextStyle(color: Colors.black54),
                        ),
                      )))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Container(
                      height: 35,
                      width: 105,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black54)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Hybird',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ))),
              Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Container(
                      height: 35,
                      width: 105,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.indigo)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Pick Up',
                          style: TextStyle(color: Colors.indigo),
                        ),
                      ))),
              Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Container(
                      height: 35,
                      width: 95,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black54)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Van',
                          style: TextStyle(color: Colors.black54),
                        ),
                      )))
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text('Price Range',
                  style: TextStyle(
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold,
                      fontSize: 22)),
              SizedBox(
                width: 80,
              ),
              Text(
                '\$740,000 - \$340,000',
                style: TextStyle(
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
            ],
          ),
      
    Container(
              color: Colors.white,
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: Colors.indigo,
                  inactiveTrackColor: Colors.grey,
                  trackShape: RectangularSliderTrackShape(),
                  trackHeight: 4.0,
                  thumbColor: Colors.indigo,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                  overlayColor: Colors.grey,
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
                ),
                child:RangeSlider(
      values: _currentRangeValues,
      min: 0,
      max: 100,
      labels: RangeLabels(
        _currentRangeValues.start.round().toString(),
        _currentRangeValues.end.round().toString(),
      ),
      onChanged: (RangeValues values) {
        setState(() {
          _currentRangeValues = values;
        });
      },
    ),
              ),
            ),
          Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text('Number of seats',
                  style: TextStyle(
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold,
                      fontSize: 22))),
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
                      child: Text('Any'),
                    ),
                    Tab(
                      child: Text(' 1'),
                    ),
                    Tab(
                      child: Text(' 2'),
                    ),
                    Tab(
                      child: Text(' 3'),
                    ),Tab(
                      child: Text(' 4+'),
                    )
                  ],
                  controller: _tabController,
                  indicatorSize: TabBarIndicatorSize.tab,
                ),
              )),
          Padding(
              padding: EdgeInsets.only(left: 10,top: 25),
              child: Text('Sort by A-Z',
                  style: TextStyle(
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold,
                      fontSize: 22))),
          Padding(
              padding: EdgeInsets.only(left: 10,top: 25),
              child: Text('Sort by default',
                  style: TextStyle(
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold,
                      fontSize: 22))),
          Padding(
            padding: EdgeInsets.only(left: 15,top: 25),
            child: Container(
              height: 50.0,
              width: 390,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.indigo)),
                onPressed: () {},
                padding: EdgeInsets.all(10.0),
                color: Colors.indigo,
                textColor: Colors.white,
                child: Text("Set Filters", style: TextStyle(fontSize: 15)),
              ),
            ),
          )
        ],
      )),
    );
  }
}
