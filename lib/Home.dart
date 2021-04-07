import 'package:apptwo/page3.dart';
import 'package:flutter/material.dart';
import 'package:apptwo/inputdesign.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String phone;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.purple[100],
      body: SafeArea(
        child: Stack(
          fit: StackFit.loose,
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Container(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("images/img2.jpg"),
                  fit: BoxFit.cover,
                )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: CircleAvatar(
                        radius: 60.0,
                        //backgroundColor: Colors.brown.shade800
                        backgroundImage: AssetImage(
                          "images/doc2.jpg",
                        ),
                      ),
                    ),
                    Text(
                      "Trade Licence",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2),
                    ),
                    Text(
                      "RAmAGUNDAM",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15.0,
                        letterSpacing: 8,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.65,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0)),
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    "Login",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("mobile number",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          )),
                    ),
                  ),
                  Form(
                    key: _formkey,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                            bottom: 20,
                            left: 10,
                            right: 10,
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: buildInputDecoration(
                                Icons.phone, "enter mobile number"),
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Please enter phone no ';
                              }
                              return null;
                            },
                            onSaved: (String value) {
                              phone = value;
                            },
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          height: 50,
                          child: ElevatedButton(
                            //color: Colors.redAccent,
                            onPressed: () {
                              if (_formkey.currentState.validate()) {
                                //print("successful");
                                //return Page2();
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Page3()),
                                );
                              } else {
                                print("UnSuccessfull");
                              }
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
