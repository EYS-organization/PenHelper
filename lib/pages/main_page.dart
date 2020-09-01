import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MainPage extends StatefulWidget {

  @override
  _MainPageState createState() => _MainPageState();
}



class _MainPageState extends State<MainPage> {

  List dateSending = ['12:28', '14:58', '14:31', '13:53', '13:50', '13:43', '17:28'];


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 5,  top: 5),
            child: InkWell(
              child: Icon(Icons.bluetooth, color: Colors.blueAccent, size: 40),
              onTap: () {},
            ),
          ),
          SizedBox(height: 60),
          Container(
            margin: EdgeInsets.only(left: 30),
            child: Text('Сообщения', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
          ),
          SizedBox(height: 40),
          Expanded(
            child: ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.only(bottom: 20, left: 10, right: 10),
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [BoxShadow(
                      color: Colors.black,
                      blurRadius: 5
                    )]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 10),
                        child: Row(
                          children: <Widget>[
                            Text('PenHelper - нашел ошибку!', style: TextStyle(fontSize: 15)),
                            Icon(Icons.error, color: Colors.red,)
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        child: Text('Получено в: ${dateSending[index]}'),
                      )
                    ],
                  ),
                )
            ),
          )
        ],
      ),
    );
  }
}