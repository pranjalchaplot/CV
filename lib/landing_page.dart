import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final String desc =
      "Hello, I’m Pranjal. I’m a Student living in Udaipur, India. I am a fan of technology, design, and writing. I’m also interested in web development and creating. You can watch my portfolio with a click on the button below.";

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [const Color(0xff6c0043), const Color(0xffff00f3)])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(80)),
              child: Image.asset("assets/images/profile_pranjal.jpeg",
                  width: 150, height: 150),
            ),
            SizedBox(height: 12),
            Text("Pranjal Chaplot",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400)),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 120,
                vertical: 10,
              ),
              child: Text(
                desc,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w200),
              ),
            ),
            SizedBox(height: 20),
            Text("Connect with me",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                )),
            SizedBox(height: 12),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     GestureDetector(
            //       onTap: () {
            //         _launchURL("https://www.instagram.com/pranjalchaplot");
            //       },
            //       child: Image.asset("assets/images/instagram.png",
            //           width: 30, height: 30),
            //     ),
            //     SizedBox(width: 12),
            //     GestureDetector(
            //         onTap: () {
            //           _launchURL("https://www.twitter.com/pranjalchaplot");
            //         },
            //         child: Image.asset("assets/images/twitter.png",
            //             width: 30, height: 30)),
            //     SizedBox(width: 12),
            //     GestureDetector(
            //       onTap: () {
            //         _launchURL("https://www.linkedin.com/pranjalchaplot");
            //       },
            //       child: Image.asset("assets/images/linkedin.png",
            //           width: 30, height: 30),
            //     ),
            //   ],
            // ),
            // Container(
            //   child: Icon(FontAwesomeIcons.linkedin)

            //   // IconButton(
            //   //     icon: FaIcon(FontAwesomeIcons.linkedin), onPressed: null)
            //   ,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.linkedin,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    _launchURL("https://www.linkedin.com/in/pranjalchaplot");
                  },
                ),
                SizedBox(width: 5),
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.twitter,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    _launchURL("https://www.twitter.com/pranjalchaplot");
                  },
                ),
                SizedBox(width: 5),
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.instagram,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    _launchURL("https://www.instagram.com/pranjalchaplot");
                  },
                ),
              ]

              // IconButton(
              //     icon: FaIcon(FontAwesomeIcons.linkedin), onPressed: null)
              ,
            ),
            SizedBox(height: 20),
            Container(
              child: Text("Download Resume"),
            ),
          ],
        ),
      ),
    );
  }
}
