import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: FlutterLogo(
          textColor: Colors.black,
          size: 25.0,
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.menu),
          color: Colors.grey,
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.more_vert,color: Colors.grey,), onPressed: (){})
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
            Stack(
              children:[
                Container(
                  alignment: Alignment(0.0,-0.40),
                  height: 100.0,
                  color: Colors.white,
                  child: Text(
                    "Get Creative people",
                    style: TextStyle(fontFamily: 'Montserrat',fontSize: 20.0),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(25, 90, 25, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2.0,
                        color: Colors.grey
                      )
                    ]
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [     
                        Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(25, 25, 5, 5),
                              child: Text(
                                'YOU HAVE',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(25.0, 48.0, 5.0, 25.0),
                              child: Text(
                                '206',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30.0),
                              ),
                            )
                          ],
                        ),
                      SizedBox(width: 60.0),
                      Container(
                        margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                        height: 60.0,
                        width: 160.0,
                        decoration: BoxDecoration(
                            color: Colors.greenAccent[100].withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Center(
                          child: Text('Buy more',
                              style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green)),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          SizedBox(height: 40.0),
          Container(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'MY COACHES',
                style: TextStyle(
                  color:  Colors.grey,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0
                ),
                ),
                Text(
                  'VIEW PAST SESSIONS',
                  style: TextStyle(
                      color:  Colors.green,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          GridView.count(
            crossAxisCount: 2,
          primary: false,
          crossAxisSpacing: 2.0,
          mainAxisSpacing: 4.0,
          shrinkWrap: true,
          children: [
            buildCard("ibrahim","online",0),
            buildCard("ibrahim","Away",0),
            buildCard("ibrahim","Away",0),
            buildCard("ibrahim","online",0),
            buildCard("ibrahim","online",0),
            buildCard("ibrahim","Away",0),
            buildCard("ibrahim","Away",0),
            buildCard("ibrahim","online",0),
          ],)
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


  Widget buildCard(String name, String status, int cardIndex){
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      elevation: 7.0,
      child: Column(
        children: [
          SizedBox(height: 12.0),
          Stack(
            children: [
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.green,
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://www.pexels.com/photo/adult-beard-boy-casual-220453/'
                    )
                  )
                ),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Text(
            name,
            style: TextStyle(
                color:  Colors.grey,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
                fontSize: 12.0
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            status,
            style: TextStyle(
                color:  Colors.grey,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
                fontSize: 12.0
            ),
          ),
          SizedBox(height: 15.0),
          Expanded(
              child: Container(
                width: 200.0,
                decoration: BoxDecoration(
                    color: status == 'Away' ? Colors.grey: Colors.green,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0),bottomRight: Radius.circular(10.0))
                ),
                child: Center(
                  child: Text('Request',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'Quicksand'
                    ),
                  ),
                ),
              )
          )
        ],
      ),
      margin: cardIndex.isEven? EdgeInsets.fromLTRB(10.0, 0.0, 8.0, 10.0): EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0),
    );
  }

}

