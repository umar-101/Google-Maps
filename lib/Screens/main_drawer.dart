import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.85,
              child: DrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/Path 10222.png"),
                        fit: BoxFit.cover)),
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.topRight,
                        width: MediaQuery.of(context).size.width * 0.85,
                        height: 40.0,
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                        )),
                    SizedBox(height: 20.0),
                    Column(
                      children: [
                        Text(
                          'Amanda Smith',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 1.2,
                              fontSize: 26.0),
                        ),
                        Text('amanda@gmail.com',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16.0)),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView(children: [
              ListTile(
                leading: Image(
                  image: AssetImage('assets/images/Points.png'),
                  width: 35.0,
                  height: 35.0,
                ),
                trailing: Container(
                  width: 65.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Center(
                      child: Text(
                    '69.5',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                title: Text("Aphive points"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Image(
                  image: AssetImage('assets/images/Experiences purple.png'),
                  width: 35.0,
                  height: 35.0,
                ),
                title: Text("Experiences"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Image(
                  image: AssetImage('assets/images/Promotions Blue.png'),
                  width: 35.0,
                  height: 35.0,
                ),
                title: Text("Promotions"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Image(
                  image: AssetImage('assets/images/Car park green.png'),
                  width: 35.0,
                  height: 35.0,
                ),
                title: Text("Car Parks"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Image(
                  image: AssetImage('assets/images/Wallet.png'),
                  width: 35.0,
                  height: 35.0,
                ),
                title: Text("Wallet"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Image(
                  image: AssetImage('assets/images/Notification.png'),
                  width: 35.0,
                  height: 35.0,
                ),
                title: Text("Notifications"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ]),
          )
        ],
      ),
    );
  }
}
