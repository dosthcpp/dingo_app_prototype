import 'dart:ui';

import 'package:dingoprototype/components/bottom_navigator_bar.dart';
import 'package:flutter/material.dart';

class AgreementManagement extends StatelessWidget {
  static const id = 'agreement_management';

  final DateTime date = DateTime.now();

  String dateForm(DateTime date) {
    const weeks = [
      '월',
      '화',
      '수',
      '목',
      '금',
      '토',
      '일',
    ];

    return "${date.toString().split(" ")[0].split("-").join(".")} (${weeks[date.weekday - 1]})";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                  top: 30.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "동의서 관리",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 30.0,
                          ),
                          onPressed: () {
                            // Do something
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 30.0,
                          ),
                          onPressed: () {
                            // Do something
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 15,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 15.0,
              ),
              child: Material(
                elevation: 1.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      10.0,
                    ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 10.0,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              _AgreementButton(
                                mainTitle: "개인정보활용 동의서",
                                subTitle: "개인정보 활용 및 기타 사항 등...",
                                date: dateForm(DateTime(2020, 03, 16)),
                                isAgreed: false,
                              ),
                              _AgreementButton(
                                mainTitle: "투약관련 병원 진료 동의서",
                                subTitle: "병원 진료 동의 및 투약관련 등...",
                                date: dateForm(DateTime(2020, 03, 16)),
                                isAgreed: false,
                              ),
                              // AgreementButton(),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 10.0,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              _AgreementButton(
                                mainTitle: "알레르기 반응 동의서",
                                subTitle: "알레르기 반응으로 인한 처방 등...",
                                date: dateForm(DateTime(2020, 03, 16)),
                                isAgreed: false,
                              ),
                              _AgreementButton(
                                mainTitle: "통학 차량 동의서",
                                subTitle: "통학 차량 이용 안내 및 이동 등...",
                                date: dateForm(DateTime(2020, 03, 16)),
                                isAgreed: true,
                              ),
                              // AgreementButton(),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 10.0,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                width: 16.0,
                              ),
                              _AgreementButton(
                                mainTitle: "종일반 동의서",
                                subTitle: "저녁시간 운영을 통한 이용안내 등...",
                                date: dateForm(DateTime(2020, 03, 16)),
                                isAgreed: true,
                              ), // AgreementButton(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigatorBar(),
    );
  }
}

class _AgreementButton extends StatelessWidget {
  _AgreementButton({
    @required this.mainTitle,
    @required this.subTitle,
    @required this.date,
    @required this.isAgreed,
    this.onTap,
  });

  final bool isAgreed;
  final String mainTitle;
  final String subTitle;
  final String date;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: (MediaQuery.of(context).size.width - 70) / 2,
        height: 108.0,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.0,
            color: isAgreed ? Colors.grey[500] : Colors.blueAccent,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              4.0,
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 5.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                mainTitle,
                style: TextStyle(
                  fontSize: mainTitle.length < 11 ? 15.0 : 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Visibility(
                visible: mainTitle.length > 11,
                child: SizedBox(
                  height: 1.0,
                ),
              ),
              Text(
                subTitle,
                style: TextStyle(
                  fontSize: 9.5,
                ),
              ),
              Text(
                date,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 6.0,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20.0,
                    ),
                    child: SizedBox(
                      width: 25.0,
                      height: 25.0,
                      child: CircleAvatar(
                        backgroundColor:
                            isAgreed ? Colors.grey[500] : Colors.blueAccent,
                        child: Image.asset(
                          'images/agreement.png',
                          scale: 2.5,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "더보기>",
                    style: TextStyle(
                      fontSize: 6.0,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        showDialog(
          barrierDismissible: true,
          context: context,
          builder: (_) => _CustomAgreementPopup(isAgreed: isAgreed),
        );
      },
    );
  }
}

class _CustomAgreementPopup extends StatelessWidget {

  final bool isAgreed;

  _CustomAgreementPopup({this.isAgreed = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        Navigator.pop(context);
      },
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 3,
          sigmaY: 3,
        ),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 2 - 200),
          child: Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            backgroundColor: Colors.white,
            child: Container(
              height: 220.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 10.0,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 60.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                              left: 15.0,
                            ),
                            child: Text(
                              "개인정보활용 동의서",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              right: 5.0,
                            ),
                            child: Icon(
                              Icons.navigate_next,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor:
                        isAgreed ? Colors.blue : Colors.black,
                    radius: 50.0,
                    child: Image.asset(
                      'images/fingerprintIcon/fingerprint.png',
                      scale: 1.2,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          child: Text(
                            "개인정보활용",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18.0,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          onTap: () {},
                        ),
                        Text(
                          "에 동의합니다.",
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ), // adjust values according to your need
        ),
      ),
    );
  }
}
