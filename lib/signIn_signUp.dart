import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: AppBody(),
    );
  }
}

class AppBody extends StatefulWidget {
  MyFormState createState() => MyFormState();
}

class MyFormState extends State<AppBody> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 155.0,
                  child: Image.asset(
                    "images/caratlane-logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 45.0,),
                TextField(
                  obscureText: false,
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      hintText: "Email",
                      border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
                ),
                SizedBox(height: 25.0,),
                TextField(
                  obscureText: true,
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      hintText: "Password",
                      border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
                ),
                SizedBox(height: 35.0,),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(30.0),
                  color: Color(0xff01A0C7),
                  child: MaterialButton(
                    minWidth: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    onPressed: () {},
                    child: Text("Login",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0).copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(height: 55.0,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}