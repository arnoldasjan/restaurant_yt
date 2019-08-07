import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_shadow.dart';
import 'category.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color kInputColor = Color(0xFF6E7FAA);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  top: 25.0,
                  bottom: 25.0,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      FontAwesomeIcons.search,
                      size: 20.0,
                      color: kInputColor,
                    ),
                    suffixIcon: Icon(
                      FontAwesomeIcons.slidersH,
                      size: 20.0,
                      color: kInputColor,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFE8E8E8),
                        width: 20.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(10.0),
                      ),
                    ),
                    filled: false,
                    hintStyle: TextStyle(
                      color: kInputColor,
                      fontSize: 18.0,
                      fontFamily: 'Josefin Sans',
                    ),
                    hintText: "Find Restaurants",
                    fillColor: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.0,
                  top: 10.0,
                  right: 20.0,
                ),
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Trending Restaurants',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Josefin Sans',
                            fontSize: 26.0,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          child: Text(
                            'See all (45)',
                            style: TextStyle(
                              fontFamily: 'Josefin Sans',
                              fontSize: 16.0,
                              color: kInputColor,
                            ),
                          ),
                          onTap: null,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 320.0,
                width: 600.0,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                              left: 20.0,
                              top: 20.0,
                              right: 20.0,
                            ),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  height: 200.0,
                                  width: 320.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/food1.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(6.0),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 10.0,
                                  left: 20.0,
                                  child: Container(
                                    height: 25.0,
                                    width: 60.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                        5.0,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'OPEN',
                                        style: TextStyle(
                                          color: Color(0xFF4CD964),
                                          fontFamily: 'Josefin Sans',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 10.0,
                                  right: 20.0,
                                  child: Container(
                                    height: 25.0,
                                    width: 50.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                        5.0,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Icon(
                                          Icons.star,
                                          color: Color(0xFFFFCC00),
                                          size: 15.0,
                                        ),
                                        Text(
                                          '4.5',
                                          style: TextStyle(
                                            color: Color(0xFF222455),
                                            fontFamily: 'Josefin Sans',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: Container(
                              height: 100.0,
                              width: 320.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(6.0),
                                ),
                              ),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 30.0,
                                      left: 10.0,
                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          'Happy Bones',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontFamily: 'Josefin Sans',
                                            fontSize: 24.0,
                                            color: Color(0xFF3E3F68),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 6.0,
                                        ),
                                        Container(
                                          height: 22.0,
                                          width: 60.0,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              // Where the linear gradient begins and ends
                                              begin: Alignment.centerLeft,
                                              end: Alignment.centerRight,
                                              colors: [
                                                // Colors are easy thanks to Flutter's Colors class.
                                                Color(0xFFFF8C48),
                                                Color(0xFFFF5673),
                                              ],
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: Center(
                                              child: Text(
                                            'Italian',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Josefin Sans'),
                                          )),
                                        ),
                                        SizedBox(
                                          width: 6.0,
                                        ),
                                        Container(
                                          height: 22.0,
                                          width: 60.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF848DFF),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '1.2 km',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Josefin Sans'),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 10.0, top: 10.0),
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          '394 Broome St, New York, NY 10013, USA',
                                          style: TextStyle(
                                            fontFamily: 'Josefin Sans',
                                            color: kInputColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  top: 20.0,
                ),
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Category',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Josefin Sans',
                            fontSize: 26.0,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          child: Text(
                            'See all (9)',
                            style: TextStyle(
                              fontFamily: 'Josefin Sans',
                              fontSize: 16.0,
                              color: kInputColor,
                            ),
                          ),
                          onTap: null,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  top: 20.0,
                ),
                child: Container(
                  height: 120.0,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return CategoryWidget;
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 20.0,
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  top: 30.0,
                ),
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Friends',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Josefin Sans',
                            fontSize: 26.0,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          child: Text(
                            'See all (56)',
                            style: TextStyle(
                              fontFamily: 'Josefin Sans',
                              fontSize: 16.0,
                              color: kInputColor,
                            ),
                          ),
                          onTap: null,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  left: 20.0,
                  right: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile1.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile2.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile3.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile1.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile2.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile3.jpg'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            height: 80.0,
            child: Row(
              children: <Widget>[
                Icon(FontAwesomeIcons.home),
                Icon(FontAwesomeIcons.bookmark),
                Icon(FontAwesomeIcons.bell),
                Icon(FontAwesomeIcons.user),
              ],
            ),
          ),
          Align(
            alignment: FractionalOffset.topCenter,
            child: Container(
              height: 70.0,
              width: 70.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF5663FF),
              ),
              child: Icon(Icons.add, color: Colors.white, size: 45.0,),
            ),
          ),
        ],
      ),
    );
  }
}
