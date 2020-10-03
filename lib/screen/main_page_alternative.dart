import 'package:dingoprototype/components/advertisement_frame.dart';
import 'package:dingoprototype/components/bottom_navigator_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPageAlternative extends StatefulWidget {
  static const id = 'main_page_alternative';

  @override
  _MainPageAlternativeState createState() => _MainPageAlternativeState();
}

class _MainPageAlternativeState extends State<MainPageAlternative> {
  String timeNow = DateTime.now().toString().split(" ")[0] + " ";
  int hour = DateTime.now().hour;
  String minute = DateTime.now().minute.toString();

  @override
  void initState() {
    super.initState();
    if (int.parse(minute) >= 0 && int.parse(minute) < 10) {
      minute = "0" + minute;
    }
    if (hour >= 0 && hour < 10) {
      timeNow += (hour.toString() + ":" + minute + " AM");
    } else if (hour == 10 || hour == 11) {
      timeNow += (hour.toString() + ":" + minute + " AM");
    } else if (hour == 12) {
      timeNow += (hour.toString() + ":" + minute + " PM");
    } else if (hour >= 13 && hour < 22) {
      timeNow += ("0" + (hour - 12).toString() + ":" + minute + " PM");
    } else if (hour == 22 || hour == 23) {
      timeNow += ((hour - 12).toString() + ":" + minute + " PM");
    }
  }

  bool _resized = false;
  bool _visible = true;
  double _height = 485.0;
  double _textSizeStatus = 50.0;
  double _textSizeFigure = 18.0;
  double _textSizeTime = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Align(
          alignment: Alignment.topRight,
          child: IconButton(
            onPressed: () {
              // TODO: direct to a page
            },
            icon: Image.asset(
              'images/alarm_setting.png',
              height: 28.0,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 3.0,
            right: 3.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onVerticalDragStart: (v) {
                  setState(() {
                    if (_resized) {
                      _resized = false;
                      _visible = true;
                      _height = 480;
                      _textSizeStatus = 50.0;
                      _textSizeFigure = 18.0;
                      _textSizeTime = 10.0;
                    } else {
                      _resized = true;
                      _visible = false;
                      _height = 85;
                      _textSizeStatus = 30.0;
                      _textSizeFigure = 12.0;
                      _textSizeTime = 8.0;
                    }
                  });
                },
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                    top: 15.0,
                  ),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    height: _height,
                    width: MediaQuery.of(context).size.width,
                    child: Material(
                      elevation: 2.0,
                      color: Colors.white,
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            4.0,
                          ),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Visibility(
                            visible: _visible,
                            child: Text(
                              "희망유치원 공기질",
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Visibility(
                            visible: _visible,
                            child: Image.asset(
                              // graph_placeholder
                              'images/graph_placeholder.png',
                              height: 250,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 5.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Visibility(
                                  visible: !_visible,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      right: 30.0,
                                    ),
                                    child: Image.asset(
                                      'images/weather/good.png',
                                      height: 60.0,
                                    ),
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      "좋음",
                                      style: TextStyle(
                                        color: Colors.blue[800],
                                        fontSize: _textSizeStatus,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "통합치수: 15",
                                      style: TextStyle(
                                          color: Colors.blue[800],
                                          fontSize: _textSizeFigure,
                                          fontWeight: FontWeight.bold,
                                          height: 1.3),
                                    ),
                                    Text(
                                      timeNow,
                                      style: TextStyle(
                                          color: Colors.blue[800],
                                          fontSize: _textSizeTime,
                                          height: 1.2),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 20.0,
                  bottom: 25.0,
                  left: 10.0,
                  right: 10.0,
                ),
                child: Card(
                  elevation: 2.0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 600.0,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                            top: 10.0,
                            right: 8.0,
                          ),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: GestureDetector(
                              child: Text(
                                "수정",
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.black54,
                                ),
                              ),
                              onTap: () {
                                // Do something
                              },
                            ),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20.0,
                              ),
                              child: CircleAvatar(
                                child: Image.asset(
                                  'images/icon.png',
                                ),
                                backgroundColor: Colors.grey[200],
                                radius: 36.0,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 3.0,
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Text(
                                        "박나래",
                                        style: TextStyle(
                                          fontSize: 21.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      Text(
                                        "만 5세",
                                        style: TextStyle(
                                          fontSize: 13.0,
                                          color: Colors.black54,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      Image.asset(
                                        'images/heart_2.png',
                                        height: 20.0,
                                      ),
                                    ],
                                  ),
                                ),
                                Material(
                                  color: Colors.greenAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 7.0,
                                      vertical: 2.0,
                                    ),
                                    child: Text(
                                      "유치원 이름",
                                      style: TextStyle(
                                        fontSize: 9.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 30.0,
                            bottom: 20.0,
                          ),
                          child: Advertisement(),
                        ),
                        Advertisement(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigatorBar(),
    );
  }
}
