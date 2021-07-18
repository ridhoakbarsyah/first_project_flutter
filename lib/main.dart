import 'package:flutter/material.dart';
import 'dart:html' as html;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [const Color(0xff213A50), const Color(0xff071930)],
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            CircleAvatar(
              radius: 100,
              child: Image.asset('avatar.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Ridho Akbarsyah Ramadhan",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Flutter Developer based in Indonesia",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "#FLUTTERDEV ❤️",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w200,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Connect With Me",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 20,
            ),

            // for our links

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    // open github
                    htmlOpenGithub();
                  },
                  child: Image.asset('github.png',
                      height: 50, color: Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    // open github
                    htmlOpenLinkedin();
                  },
                  child: Image.asset('linkedin.png',
                      height: 65, color: Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    // open github
                    htmlOpenTwitter();
                  },
                  child: Image.asset('twitter.png',
                      height: 50, color: Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    // open github
                    htmlOpenInstagram();
                  },
                  child: Image.asset('instagram.png',
                      height: 50, color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),

            // resume
            GestureDetector(
              onTap: () {
                // open github
                htmlDownloadResume();
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  gradient: LinearGradient(colors: [
                    const Color(0xffA28340),
                    const Color(0xffBC9A5F),
                  ]),
                ),
                child: Text(
                  "Download My Resume",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),

            SizedBox(
              height: 40,
            ),

            Text(
              "Made With ❤️ Using Flutter",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void htmlOpenGithub() {
  String url = "https://github.com/";
  html.window.open(url, 'github');
}

void htmlOpenLinkedin() {
  String url = "https://linkedin.com/";
  html.window.open(url, 'linkedin');
}

void htmlOpenTwitter() {
  String url = "https://twitter.com/";
  html.window.open(url, 'twitter');
}

void htmlOpenInstagram() {
  String url = "https://instagram.com/";
  html.window.open(url, 'instagram');
}

void htmlDownloadResume() {
  String url = "https://resumelink.com/";
  html.window.open(url, 'resume');
}
