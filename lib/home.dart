import 'package:flutter/material.dart';
import 'login.dart';


class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;

  static double _left;
  static double _top;
  static double _right;
  static double _bottom;


  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;

    _left = _mediaQueryData.padding.left;
    _top = _mediaQueryData.padding.top;
    _right = _mediaQueryData.padding.right;
    _bottom = _mediaQueryData.padding.bottom;
  }
}

class HomePage extends StatefulWidget {
  static String tag = 'home-page';

  _MyPage createState() => new _MyPage();
}



class _MyPage extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    void _login(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
    }

    var tempImg = Image.asset('assets/images/temp.png',
      width: 50, height: 50,);
    int count = 0;

    bool success = false;
    final page = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
            height: SizeConfig.blockSizeVertical*30,
            //padding: new EdgeInsets.only(left: 16.0, bottom: 8.0),
          decoration: new BoxDecoration(
          image: new DecorationImage(image: new AssetImage('assets/images/credit_card.png'), )
        ),
            child: new Stack(
              children: <Widget>[
                new Positioned(
                  left: 35.0,
                  top: 5.0,

                  child: success ? Container() : DragTarget(
                    builder: (context, List<Image> data, rj) {
                        return tempImg;
                    },
                    onAccept: (data) {
                      //setState(() {
                        tempImg=data;
                        success = true;
                        count++;
                      //});
                    },
                  ),
                ),
                new Positioned(
                  right: 25.0,
                  top: 5.0,

                  child: success ? Container() :  DragTarget(
                    builder: (context, List<Image> data, rj) {
                      return tempImg;
                    },
                    onAccept: (data) {
                        tempImg=data;
                        success = true;
                        count++;
                    },
                  ),
                ),
                new Positioned(
                  right: 25.0,
                  bottom: 5.0,

                  child: success ? Container() :  DragTarget(
                    builder: (context, List<Image> data, rj) {
                      return tempImg;
                    },
                    onAccept: (data) {
                      tempImg=data;
                      success = true;
                      count++;
                    },
                  ),
                ),
              ],
            )
        ),

        //SizedBox(height: 10.0),

        Container(
          height: SizeConfig.blockSizeVertical*5,
          alignment: Alignment.center,
          child: new Text(
            "Drag the Symbols to correct places:",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ),

        //SizedBox(height: 5,),

        Container(
          height: SizeConfig.blockSizeVertical*35,
            child: new Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            child: Draggable(
                              child: new Image.asset('assets/images/logo.png',
                                width: SizeConfig.blockSizeHorizontal*11, height: SizeConfig.blockSizeVertical*11,),
                              feedback: new Image.asset('assets/images/logo.png',
                                width: SizeConfig.blockSizeHorizontal*11, height: SizeConfig.blockSizeVertical*11,),
                              childWhenDragging: Container(child: new Image.asset('assets/images/logo_blur.png',
                                width: SizeConfig.blockSizeHorizontal*11, height: SizeConfig.blockSizeVertical*11,)),
                              data: Image.asset('assets/images/logo.png',
                                  width: 50, height: 50,),
                            ),
                        ),
                        //SizedBox(height: 10.0),
                        Container(
                          child: Draggable(
                            child: new Image.asset('assets/images/logo.png',
                              width: SizeConfig.blockSizeHorizontal*11, height: SizeConfig.blockSizeVertical*11,),
                            feedback: new Image.asset('assets/images/logo.png',
                              width: SizeConfig.blockSizeHorizontal*11, height: SizeConfig.blockSizeVertical*11,),
                            childWhenDragging: Container(child: new Image.asset('assets/images/logo_blur.png',
                              width: SizeConfig.blockSizeHorizontal*11, height: SizeConfig.blockSizeVertical*11,)),
                            data: Image.asset('assets/images/logo.png',
                              width: 50, height: 50,),
                          ),
                        ),
                        //SizedBox(height: 10.0),
                        Container(
                          child: Draggable(
                            child: new Image.asset('assets/images/logo.png',
                              width: SizeConfig.blockSizeHorizontal*11, height: SizeConfig.blockSizeVertical*11,),
                            feedback: new Image.asset('assets/images/logo.png',
                              width: SizeConfig.blockSizeHorizontal*11, height: SizeConfig.blockSizeVertical*11,),
                            childWhenDragging: Container(child: new Image.asset('assets/images/logo_blur.png',
                              width: SizeConfig.blockSizeHorizontal*11, height: SizeConfig.blockSizeVertical*11,)),
                            data: Image.asset('assets/images/logo.png',
                              width: 50, height: 50,),
                          ),
                        ),
                      ],
                    )
                ),

                //SizedBox(width: 30.0),

                Container(
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            child: Draggable(
                              child: new Image.asset('assets/images/Visa_Cal.png',
                                width: SizeConfig.blockSizeHorizontal*11, height: SizeConfig.blockSizeVertical*11,),
                              feedback: new Image.asset('assets/images/Visa_Cal.png',
                                width: SizeConfig.blockSizeHorizontal*11, height: SizeConfig.blockSizeVertical*11,),
                              childWhenDragging: Container(child: new Image.asset('assets/images/Visa_Cal_blur.png',
                                width: SizeConfig.blockSizeHorizontal*11, height: SizeConfig.blockSizeVertical*11,)),
                              data: Image.asset('assets/images/Visa_Cal.png',
                                width: 50, height: 50,),
                            ),
                        ),
                        //SizedBox(height: 10.0),
                        Container(
                          child: Draggable(
                            child: new Image.asset('assets/images/Visa_Cal.png',
                              width: SizeConfig.blockSizeHorizontal*11, height: SizeConfig.blockSizeVertical*11,),
                            feedback: new Image.asset('assets/images/Visa_Cal.png',
                              width: SizeConfig.blockSizeHorizontal*11, height: SizeConfig.blockSizeVertical*11,),
                            childWhenDragging: Container(child: new Image.asset('assets/images/Visa_Cal_blur.png',
                              width: SizeConfig.blockSizeHorizontal*11, height: SizeConfig.blockSizeVertical*11,)),
                            data: Image.asset('assets/images/Visa_Cal.png',
                              width: 50, height: 50,),
                          ),
                        ),
                        //SizedBox(height: 10.0),
                        Container(
                          child: Draggable(
                            child: new Image.asset('assets/images/Visa_Cal.png',
                              width: SizeConfig.blockSizeHorizontal*11, height: SizeConfig.blockSizeVertical*11,),
                            feedback: new Image.asset('assets/images/Visa_Cal.png',
                              width: SizeConfig.blockSizeHorizontal*11, height: SizeConfig.blockSizeVertical*11,),
                            childWhenDragging: Container(child: new Image.asset('assets/images/Visa_Cal_blur.png',
                              width: SizeConfig.blockSizeHorizontal*11, height: SizeConfig.blockSizeVertical*11,)),
                            data: Image.asset('assets/images/Visa_Cal.png',
                              width: 50, height: 50,),
                          ),
                        ),
                      ],
                    )
                ),

                //SizedBox(width: 30.0),

                Container(
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            child: new Image.asset('assets/images/blocked.png',
                              width: SizeConfig.blockSizeHorizontal*11, height: SizeConfig.blockSizeVertical*11,)
                        ),
                        //SizedBox(height: 10.0),
                        Container(
                            child: Draggable(
                              child: new Image.asset('assets/images/Leumi_Card.png',
                                width: SizeConfig.blockSizeHorizontal*11, height: SizeConfig.blockSizeVertical*11,),
                              feedback: new Image.asset('assets/images/Leumi_Card.png',
                                width: SizeConfig.blockSizeHorizontal*11, height: SizeConfig.blockSizeVertical*11,),
                              childWhenDragging: Container(child: new Image.asset('assets/images/Leumi_Card_blur.png',
                                width: SizeConfig.blockSizeHorizontal*11, height: SizeConfig.blockSizeVertical*11,)),
                              data: Image.asset('assets/images/Leumi_Card.png',
                                width: 50, height: 50,),
                            ),
                        ),
                        //SizedBox(height: 10.0),
                        Container(
                          child: Draggable(
                            child: new Image.asset('assets/images/Leumi_Card.png',
                              width: SizeConfig.blockSizeHorizontal*11, height: SizeConfig.blockSizeVertical*11,),
                            feedback: new Image.asset('assets/images/Leumi_Card.png',
                                width: SizeConfig.blockSizeHorizontal*11, height: SizeConfig.blockSizeVertical*11,),
                            childWhenDragging: Container(child: new Image.asset('assets/images/Leumi_Card_blur.png',
                              width: SizeConfig.blockSizeHorizontal*11, height: SizeConfig.blockSizeVertical*11,)),
                            data: Image.asset('assets/images/Leumi_Card.png',
                              width: 50, height: 50,),
                          ),
                        ),
                      ],
                    )
                ),
              ],
            ),
        ),
      ],
    );




    final ready = Container(
      alignment: Alignment.center,
        height: SizeConfig.blockSizeVertical*15,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: SizeConfig.screenWidth,
                child:  RaisedButton(
                  color: Color.fromRGBO(248, 95, 100, 1.0),
                  highlightColor: Colors.black,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  onPressed: (){
                    if(count >= 3){
                      _login();
                    }
                    else{
                      Widget okButton = FlatButton(
                        child: Text("OK"),
                        onPressed: () { Navigator.of(context).pop(); },
                      );
                      AlertDialog alert = AlertDialog(
                        content: Text("Replace First"),
                        actions: [
                          okButton,
                        ],
                      );
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alert;
                        },
                      );
                    }
                  },
                  padding: EdgeInsets.all(12),
                  child: Text('Ready', style: TextStyle(letterSpacing: 2, fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
                )

            ),
            SizedBox(height: 10.0),
            Container(
              child: Text(
                "Skip to overal offers",
                textAlign: TextAlign.center,
                style: TextStyle(decoration: TextDecoration.underline,
                    fontSize: 12, color: Colors.grey, letterSpacing: 2),
              ),
            ),
          ],
        )
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
        padding: EdgeInsets.only(top: 10, left: 24, right: 24),
          shrinkWrap: true,
          children: <Widget>[
            //SizedBox(height: 15),
            page,
            //SizedBox(height: 15.0),
            ready,

            //divide,
            //policy
          ],
        ),
    );
  }
}
