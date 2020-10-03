import 'package:flutter/material.dart';
import 'package:dingoprototype/components/child_card.dart';
import 'package:flutter/cupertino.dart';

class AddChildIOSStyled extends StatefulWidget {
  AddChildIOSStyled({this.name, this.age, this.childList});

  String name;
  int age;
  final List<Widget> childList;

  @override
  _AddChildIOSStyledState createState() => _AddChildIOSStyledState();
}

class _AddChildIOSStyledState extends State<AddChildIOSStyled> {
  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text("원아 추가"),
      content: Card(
          color: Colors.transparent,
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: "원생의 이름을 입력해주세요.",
                  filled: true,
                  fillColor: Colors.grey.shade50,
                ),
                onChanged: (value) {
                  widget.name = value;
                },
              ),
              SizedBox(
                height: 5.0,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "원생의 나이를 입력해주세요.",
                  filled: true,
                  fillColor: Colors.grey.shade50,
                ),
                onChanged: (value) {
                  widget.age = int.parse(value);
                },
              ),
            ],
          )
      ),
      actions: <Widget>[
        FlatButton(
          child: Text("확인"),
          onPressed: () {
            if(widget.name == null && widget.age == null) {
              // TODO: what should be done?
            } else {
              setState(() {
                widget.childList.add(
                  ChildCard(
                    childName: widget.name,
                    age: widget.age,
                  ),
                );
                widget.childList.add(
                  SizedBox(
                      width: 10.0
                  ),
                );
              });
            }
            widget.name = null;
            widget.age = null;
            Navigator.pop(context);
          },
        ),
        FlatButton(
          child: Text("닫기"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
