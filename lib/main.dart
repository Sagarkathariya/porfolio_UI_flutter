import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "portFolio",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("portFolio"),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Card(
                elevation: 2.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 30.0,
                    horizontal: 20.0,
                  ),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage("images/sagar.jpg"),
                        radius: 80.0,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "Sagar Kathariya",
                        style:TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,),
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        "Web and App Developer",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 0.0,
                      ),
                      Text(
                        "Hello! My name is Sagar Kathariya. I am a Web and App Developer & also a digital advertiser. I am studying Bachelor of Computer Application at Dhangadhi Engineering College, Dhangadhi. Currently I am living in Dhangadhi, Kailali, Nepal.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: "Exo 2, sans-serif",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 3.0),
                child: Text(
                  "Social Links",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              Card(
                elevation: 3.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        launch(
                            "https://www.facebook.com/mesagarkathariya");
                      },
                      color: Colors.lightBlue,
                      icon: FaIcon(FontAwesomeIcons.facebook),
                    ),
                    IconButton(
                      onPressed: () {
                        launch("https://www.instagram.com/sagar.kathariya");
                      },
                      color: Colors.red,
                      icon: FaIcon(FontAwesomeIcons.instagram),
                    ),
                    IconButton(
                      onPressed: () {
                        launch("https://www.twitter.com/sagarkathariya");
                      },
                      color: Colors.blueAccent,
                      icon: FaIcon(FontAwesomeIcons.twitter),
                    ),
                    IconButton(
                      onPressed: () {
                        launch("https://www.youtube.com/sagarkathariya");
                      },
                      color: Colors.red,
                      icon: FaIcon(FontAwesomeIcons.youtube),
                    ),
                    IconButton(
                      onPressed: () {
                        launch(
                            "https://www.linkedin.com/in/sagar-kathariya-0623a3170/");
                      },
                      color: Colors.blueGrey,
                      icon: FaIcon(FontAwesomeIcons.linkedin),
                    ),
                    IconButton(
                      onPressed: () {
                        launch("https://www.Sagarkathariya.com.np");
                      },
                      color: Colors.blueGrey,
                      icon: FaIcon(FontAwesomeIcons.link),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 3.0),
                child: Text(
                  "Skills",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              Card(
                elevation: 3.0,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                        "https://www.xda-developers.com/files/2017/05/AAEAAQAAAAAAAAg8AAAAJGFhMDRkNmMyLTY5M2EtNDgwYS1iMWE4LTk2YThkYTM0ODY4OQ.jpg"),
                  ),
                  title: Text("Web Developer"),
                  subtitle: Text("HTML, JavaScript, CSS, PHP, JSP & Angular"),
                ),
              ),
              Card(
                elevation: 3.0,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                        "https://appinventiv.com/blog/wp-content/uploads/2017/06/Effective-Ways-to-Choose-the-Best-Mobile-App-Developer.jpg"),
                  ),
                  title: Text("App Developer"),
                  subtitle: Text("Dart and Flutter, JAVA, C++ & VB.NET"),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
