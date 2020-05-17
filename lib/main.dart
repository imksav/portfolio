import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Portfolio",
      home: Portfolio(),
    );
  }
}

class Portfolio extends StatefulWidget {
  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  final skillsName = [
    "Web Development",
    "Designing",
    "Event Management",
    "App Development",
  ];
  final skillsOn = [
    "HTML, CSS",
    "Photoshop",
    "School, College, Open Nationwide, Exhibition",
    "JAVA, Flutter",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Me"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              elevation: 2.0,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 30.0,
                  horizontal: 20.0,
                ),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 70.0,
                      backgroundImage: AssetImage("images/imksav.png"),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "Keshav Bhandari",
                      style: TextStyle(
                        fontSize: 30.0,
                      ),
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Text(
                      "Deep Learner",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Text(
                      "I’m tech loving person of my era. I love to experience all the works in my life. I involve in event management and organize the various event that are concerned to education.",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: "NotoSans",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Card(
              elevation: 1.0,
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.blue,
                  size: 30.0,
                ),
                title: Text(
                  "imksav@gmail.com",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.2,
                      fontFamily: "NotoSans"),
                ),
                onTap: () {
                  launch("mailto:imksav@gmail.com");
                },
              ),
            ),
            Card(
              elevation: 1.0,
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.blue,
                  size: 30.0,
                ),
                title: Text(
                  "+977-9823872337",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "NotoSans",
                    letterSpacing: 1.5,
                  ),
                ),
                onTap: () {
                  launch("tel:+977-9823872337");
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.0,
                top: 10.0,
                bottom: 3.0,
              ),
              child: Text(
                "Social Links",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Card(
              elevation: 2.0,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(FontAwesomeIcons.facebook),
                      color: Colors.blue,
                      iconSize: 40.0,
                      onPressed: () {
                        launch("https://www.facebook.com/imksav/");
                      },
                    ),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.instagram),
                      color: Colors.red,
                      iconSize: 40.0,
                      onPressed: () {
                        launch("https://www.instagram.com/imksav/");
                      },
                    ),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.linkedin),
                      color: Colors.blue,
                      iconSize: 40.0,
                      onPressed: () {
                        launch("https://www.linkedin.com/in/imksav/");
                      },
                    ),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.youtube),
                      color: Colors.red,
                      iconSize: 40.0,
                      onPressed: () {
                        launch(
                            "https://www.youtube.com/channel/UCajTLJEdGEGOxLLchMj6efA");
                      },
                    ),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.twitter),
                      color: Colors.blue,
                      iconSize: 40.0,
                      onPressed: () {
                        launch("https://twitter.com/imksav");
                      },
                    ),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.github),
                      color: Colors.black,
                      iconSize: 40.0,
                      onPressed: () {
                        launch("https://github.com/imksav");
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.0,
                top: 10.0,
                bottom: 3.0,
              ),
              child: Text(
                "Skills",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Card(
              elevation: 2.0,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage("images/skill0.png"),
                ),
                title: Text("Web Development"),
                subtitle: Text("HTML, CSS"),
              ),
            ),
            Card(
              elevation: 2.0,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage("images/skill1.jpeg"),
                ),
                title: Text("Designing"),
                subtitle: Text("Photoshop"),
              ),
            ),
            Card(
              elevation: 2.0,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage("images/skill2.png"),
                ),
                title: Text("Event Management"),
                subtitle: Text("School, College, Open Nationwide, Exhibition"),
              ),
            ),
            Card(
              elevation: 2.0,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage("images/skill3.png"),
                ),
                title: Text("App Development"),
                subtitle: Text("Java, Dart and Flutter"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
