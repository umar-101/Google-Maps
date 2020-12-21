import 'package:appdec15/Screens/mapScreen.dart';
import 'package:appdec15/Screens/stack_Container_widget.dart';
import 'package:flutter/material.dart';

class VenuDetailScreen extends StatefulWidget {
  VenuDetailScreen({Key key}) : super(key: key);

  @override
  _VenuDetailScreenState createState() => _VenuDetailScreenState();
}

class _VenuDetailScreenState extends State<VenuDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image(
                  image: AssetImage('assets/images/stackpic.png'),
                  width: double.infinity,
                  height: 260.0,
                ),
                //two StackContainers are extracted widgets one is of expereince tile and other is venue
                StackContainer(
                  height: 50.0,
                  child: Center(
                    child: Text(
                      'Experience title',
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 170),
                  child: StackContainer(
                    height: 40.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Venue',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 17.0,
                            ),
                          ),
                          Text(
                            '\u00a3 30.00',
                            style: TextStyle(
                              color: Colors.greenAccent[700],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Column(
                  children: [
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s',
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '\u00a3 30.00',
                      style: TextStyle(
                        color: Colors.greenAccent[700],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      padding: EdgeInsets.all(5.0),
                      width: 140,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Center(
                        child: Text(
                          'Book now',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Validity: anytime before March',
                    ),
                    SizedBox(height: 10.0),
                    GestureDetector(
                      child: Text(
                        'Refund policy',
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(children: <Widget>[
                ExpansionTile(
                  title: Text(
                    "Venue",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Adress: 18 Old Brompton Road,London SW7 4HD'),
                          Text('Phone number: 020-7451-9871'),
                          Row(
                            children: [
                              Text('WebPage: '),
                              Text(
                                'www.aphive.com',
                                style: TextStyle(
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Text(
                              'Description: Lorem Ipsum is simply dummy text of the printing and typesettingLorem Ipsum is simply dummy text of the printing and typesetting')
                        ],
                      ),
                    )
                  ],
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: <Widget>[
                  ExpansionTile(
                    title: Text(
                      "How to Book",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: <Widget>[
                  ExpansionTile(
                    title: Text(
                      "Promotion Details",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MapScreen()),
          );
        },
        child: Text(
          'Back',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
