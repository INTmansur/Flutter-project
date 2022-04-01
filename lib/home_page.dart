import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  int counter = 0;
  static List<Widget> _widgetOptions = <Widget>[
    Home(),
    Text("Index 2: Profile"),
    Center(
      child: Profile(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // leading: Icon(Icons.home),
          automaticallyImplyLeading: true,
          elevation: 0.0,
          shadowColor: Colors.teal[500],
          backgroundColor: Colors.teal[800],
          titleSpacing: 2.0,
          centerTitle: true,
          toolbarHeight: 60.2,
          title: Text(
            "Home",
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.teal[100],
            ),
          ),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        drawer: Drawer(
          child: ListView(children: const <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Text("Home page drawer",
                    style: TextStyle(
                      color: Color.fromARGB(255, 213, 223, 213),
                      fontSize: 24,
                    ))),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: Text("Message"),
              leading: Icon(Icons.message),
            )
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            fixedColor: Colors.green,
            items: [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: "Search",
                icon: Icon(Icons.search),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(Icons.account_circle),
              )
            ],
            onTap: (int indexOfItem) {
              setState(() {
                _selectedIndex = indexOfItem;
              });
            }));
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.teal[100],
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://www.themoviedb.org/t/p/w1000_and_h563_face/oCbJbk8qKvQJx3RoEo4gE1EVKcK.jpg"),
                          radius: 15.0,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text("NAME",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 1,
                            color: Colors.grey[600])),
                    Text("Mansur Dewan",
                        style: TextStyle(
                            fontSize: 24.0,
                            wordSpacing: 2.0,
                            color: Color.fromARGB(255, 75, 71, 71))),
                    SizedBox(height: 20.0),
                    Text("D.O.B",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 1,
                            color: Colors.grey[600])),
                    Text("27/04/1999",
                        style: TextStyle(
                            fontSize: 24.0,
                            wordSpacing: 2.0,
                            color: Color.fromARGB(255, 75, 71, 71))),
                    SizedBox(height: 20.0),
                    Text("MOBILE NO.",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 1,
                            color: Colors.grey[600])),
                    Text("8250248991",
                        style: TextStyle(
                            fontSize: 24.0,
                            wordSpacing: 2.0,
                            color: Color.fromARGB(255, 75, 71, 71))),
                    SizedBox(height: 20.0),
                    Text("PAN No.",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 1,
                            color: Colors.grey[600])),
                    Text("GIJPD6471J",
                        style: TextStyle(
                            fontSize: 24.0,
                            wordSpacing: 2.0,
                            color: Color.fromARGB(255, 75, 71, 71))),
                    SizedBox(height: 20.0),
                    Text("ADHAR NO.",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 1,
                            color: Colors.grey[600])),
                    Text("445876375744",
                        style: TextStyle(
                            fontSize: 24.0,
                            wordSpacing: 2.0,
                            color: Color.fromARGB(255, 75, 71, 71))),
                    SizedBox(height: 20.0),
                    Text("FATHER NAME",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 1,
                            color: Colors.grey[600])),
                    Text("Ali hossen Dewan",
                        style: TextStyle(
                            fontSize: 24.0,
                            wordSpacing: 2.0,
                            color: Color.fromARGB(255, 75, 71, 71))),
                  ]),
            )));
  }
}

class Home extends StatefulWidget {
  // const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Calculator all the key;
  int one = 1;
  int two = 2;
  int three = 3;
  int four = 4;
  int five = 5;
  int six = 6;
  int seven = 7;
  int eight = 8;
  int nine = 9;
  int zero = 0;
  bool plus = false;
  bool minus = false;
  bool mul = false;
  bool divide = false;
  bool del = false;
  bool equal = false;

  int counter = 0;

  int answer = 0;
  String holda = "";
  String holdb = "";
  // String operator = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(children: <Widget>[
        Container(
          child: Text("counter is : $counter",
              style: TextStyle(
                fontSize: 24.0,
              )),
          width: 200,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.teal[100],
            borderRadius: BorderRadius.circular(2.0),
          ),
        ),
        Divider(
          color: Colors.grey[600],
          height: 20.0,
        ),
        Container(
            child: Text("$answer",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold))),
        Divider(
          color: Colors.grey[600],
          height: 20.0,
        ),
        // Container(
        //   child: Text(
        //     holda != "" ? "$holda" : "",
        //     style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        //   ),
        // ),
        Row(children: <Widget>[
          Container(
              child: RaisedButton(
            onPressed: () {
              setState(() {
                if (holda != "") {
                  holdb += "1";
                } else {
                  holda += "1";
                }
                print(holda);
              });
            },
            child: Text("1"),
          )),
          Container(
              child: RaisedButton(
            onPressed: () {
              setState(() {
                if (holda != "") {
                  holdb += "2";
                } else {
                  holda += "2";
                }
              });
            },
            child: Text("2"),
          )),
          Container(
              child: RaisedButton(
            onPressed: () {
              setState(() {
                if (holda != "") {
                  holdb += "3";
                } else {
                  holda += "3";
                }
              });
            },
            child: Text("3"),
          )),
          Container(
              child: RaisedButton(
            onPressed: () {
              setState(() {
                plus = true;
                minus = false;
                mul = false;
                divide = false;
                del = false;
                equal = false;
              });
            },
            child: Text("+"),
          ))
        ]),
        Row(children: <Widget>[
          Container(
              child: RaisedButton(
            onPressed: () {
              setState(() {
                if (holda != "") {
                  holdb += "4";
                } else {
                  holda += "4";
                }
              });
            },
            child: Text("4"),
          )),
          Container(
              child: RaisedButton(
            onPressed: () {
              setState(() {
                if (holda != "") {
                  holdb += "5";
                } else {
                  holda += "5";
                }
              });
            },
            child: Text("5"),
          )),
          Container(
              child: RaisedButton(
            onPressed: () {
              setState(() {
                if (holda != "") {
                  holdb += "6";
                } else {
                  holda += "6";
                }
              });
            },
            child: Text("6"),
          )),
          Container(
              child: RaisedButton(
            onPressed: () {
              setState(() {
                plus = false;
                minus = true;
                mul = false;
                divide = false;
                del = false;
                equal = false;
              });
            },
            child: Text("-"),
          ))
        ]),
        Row(children: <Widget>[
          Container(
              child: RaisedButton(
            onPressed: () {
              setState(() {
                if (holda != "") {
                  holdb += "7";
                } else {
                  holda += "7";
                }
              });
            },
            child: Text("7"),
          )),
          Container(
              child: RaisedButton(
            onPressed: () {
              setState(() {
                if (holda != "") {
                  holdb += "8";
                } else {
                  holda += "8";
                }
              });
            },
            child: Text("8"),
          )),
          Container(
              child: RaisedButton(
            onPressed: () {
              setState(() {
                if (holda != "") {
                  holdb += "9";
                } else {
                  holda += "9";
                }
              });
            },
            child: Text("9"),
          )),
          Container(
              child: RaisedButton(
            onPressed: () {
              setState(() {
                plus = false;
                minus = false;
                mul = true;
                divide = false;
                del = false;
                equal = false;
              });
            },
            child: Text("*"),
          ))
        ]),
        Row(children: <Widget>[
          Container(
              child: RaisedButton(
            onPressed: () {
              setState(() {
                if (holda != "") {
                  holdb += "0";
                } else {
                  holda += "0";
                }
              });
            },
            child: Text("0"),
          )),
          Container(
              child: RaisedButton(
            onPressed: () {
              setState(() {
                if (holdb != "") {
                  holdb = "";
                  answer = 0;
                } else {
                  holda = "";
                  answer = 0;
                }
              });
            },
            child: Text("DEl"),
          )),
          Container(
              child: RaisedButton(
            onPressed: () {
              setState(() {
                plus = false;
                minus = false;
                mul = false;
                divide = true;
                del = false;
                equal = false;
              });
            },
            child: Text("/"),
          )),
          Container(
              child: RaisedButton(
            onPressed: () {
              setState(() {
                if (plus == true &&
                    minus == false &&
                    mul == false &&
                    divide == false) {
                  if (holda != "" && holdb != "") {
                    print(int.parse(holda));
                    print(int.parse(holdb));
                    answer = (int.parse(holda)) + (int.parse(holdb));
                    holda = "";
                    holdb = "";
                  }
                } else if (plus == false &&
                    minus == true &&
                    mul == false &&
                    divide == false) {
                  if (holda != "" && holdb != "") {
                    print(int.parse(holda));
                    print(int.parse(holdb));
                    answer = (int.parse(holda)) - (int.parse(holdb));

                    holda = "";
                    holdb = "";
                  }
                } else if (plus == false &&
                    minus == false &&
                    mul == true &&
                    divide == false) {
                  if (holda != "" && holdb != "") {
                    print(int.parse(holda));
                    print(int.parse(holdb));
                    answer = (int.parse(holda)) * (int.parse(holdb));

                    holda = "";
                    holdb = "";
                  }
                } else if (plus == false &&
                    minus == false &&
                    mul == false &&
                    divide == true) {
                  if (holda != "" && holdb != "") {
                    print(int.parse(holda));
                    print(int.parse(holdb));
                    answer = (int.parse(holda)) ~/ (int.parse(holdb));

                    holda = "";
                    holdb = "";
                  }
                }
              });
            },
            child: Text("="),
          ))
        ]),
      ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
          print(counter);
        },
        child: Icon(Icons.add),
        elevation: 10.0,
      ),
    );
  }
}
