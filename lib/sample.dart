import 'package:flutter/material.dart';


class Sample extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {




    bool isSuccessful;

    final one = DragTarget(
    builder: (context, List<String> candidateData, rejectedData) {
    return Center(
    child: isSuccessful
    ? Padding(
    padding: EdgeInsets.only(top: 100.0),
    child: Container(
    color: Colors.yellow,
    height: 200.0,
    width: 200.0,
    child: Center(
    child: FlutterLogo(
    size: 100.0,
    )),
    ),
    )
        : Container(
    height: 200.0,
    width: 200.0,
    color: Colors.yellow,
    ),
    );
    },
    onWillAccept: (data) {
    return true;
    },
    onAccept: (data) {
    /*setState(() {
    isSuccessful = true;
    });*/
    },
    );


    return Scaffold(
      appBar: AppBar(
        title: Center(child:  new Image.asset('assets/images/homelogo.PNG', fit: BoxFit.cover)),
        backgroundColor: Color.fromRGBO(56, 64, 81, 1.0),
        automaticallyImplyLeading: false,
        leading: IconButton(
          color: Color.fromRGBO(248, 95, 100, 1.0),
          tooltip: 'Notification',
          icon: const Icon(Icons.notifications),
          onPressed: () {

          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.list, color: Color.fromRGBO(248, 95, 100, 1.0)),
            tooltip: 'List',
            onPressed: () {
            },
          ),
        ],
      ),

      backgroundColor: Colors.white,


      body: ListView(
        padding: EdgeInsets.only(left: 15, right: 15),
        shrinkWrap: true,
        children: <Widget>[
          one,


          //divide,
          //policy
        ],
      ),
    );
  }
}
