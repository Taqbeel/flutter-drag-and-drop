import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'home.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
  }
}

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);


    TextEditingController get_email = new TextEditingController();
    TextEditingController get_password = new TextEditingController();
    bool _validate = false;

    void _home(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
    }


    final login = Column(
                  children: [
                  Container(
                    height: SizeConfig.blockSizeVertical*20,
                    alignment: Alignment.center,
                    child: Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35, color: Color.fromRGBO(248, 95, 100, 1.0)),
                    ),
                  )
                ],
              );

    final fields = Container(
    height: SizeConfig.blockSizeVertical*30,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
        child: TextFormField(
        controller: get_email,
          keyboardType: TextInputType.emailAddress,
          autofocus: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          decoration: InputDecoration(
            errorText: _validate ? 'Value Can\'t Be Empty' : null,
            prefixIcon: Icon(Icons.person),
            hintText: 'Username or Email',
            contentPadding: EdgeInsets.fromLTRB(18.0, 15.0, 18.0, 15.0),
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14.0),
                borderSide: BorderSide(color: Color.fromRGBO(55, 195, 183, 0.06), width: 3.0)),
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14.0),
                borderSide: BorderSide(color: Color.fromRGBO(56, 64, 81, 0.03), width: 3.0))
            ),
          )
        ),

        //SizedBox(height: 10.0),

        Container(
          child: TextFormField(
            controller: get_password,
            autofocus: false,
            obscureText: true,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
              errorText: _validate ? 'Value Can\'t Be Empty' : null,
              prefixIcon: Icon(const IconData(0xe801, fontFamily: 'MyIcon')),
              hintText: 'Password',
              contentPadding: EdgeInsets.fromLTRB(18.0, 15.0, 18.0, 15.0),
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14.0),
              borderSide: BorderSide(color: Color.fromRGBO(55, 195, 183, 0.06), width: 3.0)),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14.0),
              borderSide: BorderSide(color: Color.fromRGBO(56, 64, 81, 0.03), width: 3.0))
              ),
            )
          ),

        //SizedBox(height: 5,),

        Container(
        //padding: EdgeInsets.only(left: 12,),
        alignment: Alignment.topLeft,
        height: 20,
          child: FlatButton(
            child: Text(
            "forgot password ?",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 12, color: Color.fromRGBO(248, 95, 100, 1.0)),
          ),

          onPressed: () {},
          )
        ),
        SizedBox(height: 8,),
        Container(
            width: SizeConfig.screenWidth,
          child: RaisedButton(
            highlightColor: Colors.white,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            onPressed: () {
              if(get_email.text == "example@exm.com" && get_password.text == "asd" )
              {
                _home();
              }
              else
              {
                Widget okButton = FlatButton(
                  child: Text("OK"),
                  onPressed: () { Navigator.of(context).pop(); },
                );
                AlertDialog alert = AlertDialog(
                  content: Text("Email or apssword is Invalid"),
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
            color: Colors.black,
            child: Text('LOGIN', style: TextStyle(letterSpacing: 2, fontSize: 16, color: Colors.white)),
          )
        ),
      ],
    )
    );





    final signup = Container(
      height: SizeConfig.blockSizeVertical*30,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: FlatButton(
              child: Text(
                "OR",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.grey),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,

            //padding: new EdgeInsets.all(20),
            child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ClipOval(
                    child: Container(
                      color: Color.fromRGBO(248, 250, 252, 1.0),
                      child: IconButton(onPressed: () {
                      },
                          icon: Icon(const IconData(0xf09a, fontFamily: 'MyIcon'))),
                    ),
                  ),

                  SizedBox(width: 20),

                  ClipOval(
                    child: Container(
                      color: Color.fromRGBO(248, 250, 252, 1.0),
                      child: IconButton(onPressed: () {
                      },
                          icon: Icon(const IconData(0xf1a0, fontFamily: 'MyIcon'))),
                    ),
                  ),
                ]
            ),
          ),
          Container(
            width: SizeConfig.screenWidth,
            child: RaisedButton(
              highlightColor: Colors.black,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              onPressed: () {

              },
              padding: EdgeInsets.all(12),
              //color: Colors.black,
              child: Text('SIGN UP', style: TextStyle(letterSpacing: 2, fontSize: 17,
                  color: Color.fromRGBO(248, 95, 100, 1.0),
                  fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );




    final divide = Container(
      alignment: Alignment.bottomCenter,
      height: SizeConfig.blockSizeVertical*10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            child: Divider(
              color: Colors.red,
              indent: 0.0,
              endIndent: 0.0,
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "by moving to next I'm approving the ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10, color: Colors.red),
                  ),

                  Text(
                    "policies",
                    style: TextStyle(decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold, fontSize: 10, color: Colors.grey),
                  ),
                ]
            ),
          )
        ],
      ),
    );




    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      body: Container(
        child: ListView(
        
          shrinkWrap: true,
          padding: EdgeInsets.only(top: 50.0, left: 24.0, right: 24.0),
          children: <Widget>[
            login,
            //SizedBox(height: 15),
            fields,
            //SizedBox(height: 15.0),
            //loginButton,
            //or,
            //social,
            //SizedBox(height: 12.0),
            signup,
            SizedBox(height: 12.0),
            divide,
            //policy
          ],
        ),
      ),
    );
  }
}
