import 'package:flutter/material.dart';
import 'package:flutter_assignment/10+1.dart';
import 'package:flutter_assignment/contact_us.dart';
import 'package:flutter_assignment/welcome_page.dart';

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar({Key key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  String title = "Welcome User";
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (_selectedIndex) {
        case 0: {
          title = "Locate Us";
        }
        break;
        case 1: {
          title = "Product List";
        }
        break;
        case 2: {
          title = "Contact Us";
        }
        break;
        default: {
          title = "Special Discount";
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.purple,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.location_pin),
            label: "Locate Us",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt),
              label: "Product List"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: "Contact Us",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Special Discount"
          ),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        iconSize: 40,
        elevation: 5,
        onTap: _onItemTapped,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.only(top: 0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("This is Name"),
              accountEmail: Text("this.is@email.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/caratlane-logo.png"),
              ),
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
            ),
            ListTile(
              title: new Text("Home"),
              leading: new Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(height: 0.1),
            ListTile(
              title: new Text("My Wallet"),
              leading: new Icon(Icons.account_balance_wallet),
            ),
            Divider(height: 0.1),
            ListTile(
              title: new Text("Redeem"),
              leading: new Icon(Icons.redeem),
            ),
            Divider(height: 0.1),
            ListTile(
              title: new Text("Offer"),
              leading: new Icon(Icons.local_offer),
            ),
            Divider(height: 0.1),
            ListTile(
              title: new Text("10+1"),
              leading: new Icon(Icons.calendar_today),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => TenPlusOne()));
              },
            ),
            Divider(height: 0.1),
            ListTile(
              title: new Text("MyGoldMine"),
              leading: new Icon(Icons.card_giftcard),
            ),
            Divider(height: 0.1),
            ListTile(
              title: new Text("FAQ"),
              leading: new Icon(Icons.people),
            ),
            Divider(height: 0.1),
            ListTile(
              title: new Text("Logout"),
              leading: new Icon(Icons.logout),
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                  // the new route
                  MaterialPageRoute(
                    builder: (BuildContext context) => WelcomePage(),
                  ),
                      (Route route) => false,
                );
              },
            ),
            Divider(height: 0.1),
          ],
        ),
      ),
    );
  }
}