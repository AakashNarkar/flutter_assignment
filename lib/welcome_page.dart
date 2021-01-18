import 'package:flutter/material.dart';
import 'home_page.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: WelcomePageBody(),
    );
  }
}

class WelcomePageBody extends StatelessWidget {
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
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.purple,
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
                SizedBox(
                    height: 45.0,
                    child: Center(
                      child: Text(
                        "OR",
                        textAlign: TextAlign.center,
                      ),
                    )
                ),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.purple,
                  child: MaterialButton(
                    minWidth: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    onPressed: () {},
                    child: Text("Sign Up",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0).copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(height: 25.0,),
                Container(
                  alignment: Alignment.bottomRight,
                  child: FlatButton(
                    child: Text('SKIP'),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyNavigationBar()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}