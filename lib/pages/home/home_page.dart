import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:placement/component/main_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Internship/internship_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  var cities = [
    {
      "name": "Delhi",
      "url":
          "https://cdn2.iconfinder.com/data/icons/indian-cities/64/Delhi-512.png"
    },
    {
      "name": "Hyderbad",
      "url": "https://cdn-icons-png.flaticon.com/512/2160/2160071.png"
    },
    {
      "name": "Delhi",
      "url":
          "https://cdn2.iconfinder.com/data/icons/indian-cities/64/Delhi-512.png"
    },
    {
      "name": "Hyderbad",
      "url": "https://cdn-icons-png.flaticon.com/512/2160/2160071.png"
    },
    {
      "name": "Delhi",
      "url":
          "https://cdn2.iconfinder.com/data/icons/indian-cities/64/Delhi-512.png"
    }
  ];
  var categories = [
    {
      "name": "Part Time",
      "url":
          "https://cdn0.iconfinder.com/data/icons/shopping-solid-2/48/92-512.png"
    },
    {
      "name": "Engineering",
      "url":
          "https://icon-library.com/images/computer-engineer-icon/computer-engineer-icon-5.jpg"
    },
    {
      "name": "Human Resource",
      "url":
          "https://w7.pngwing.com/pngs/562/359/png-transparent-computer-icons-human-resource-graphics-business-sen-department-text-human-resource-management-logo.png"
    },
    {
      "name": "Part Time",
      "url":
          "https://cdn0.iconfinder.com/data/icons/shopping-solid-2/48/92-512.png"
    },
    {
      "name": "Engineering",
      "url":
          "https://icon-library.com/images/computer-engineer-icon/computer-engineer-icon-5.jpg"
    },
    {
      "name": "Human Resource",
      "url":
          "https://w7.pngwing.com/pngs/562/359/png-transparent-computer-icons-human-resource-graphics-business-sen-department-text-human-resource-management-logo.png"
    },
  ];

  Widget build(BuildContext context) {
    _launchURL() async {
      const url =
          'https://practice.geeksforgeeks.org/courses/dsa-self-paced?utm_source=practice&utm_medium=banner&utm_campaign=dsa_selfpaced';
      final uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // InkWell(
            //   child: Image.network(
            //       "https://media.geeksforgeeks.org/img-practice/courses/dsa_selfpaced_web.png"),
            //   onTap: _launchURL,
            // ),
            Container(
              color: Color.fromARGB(255, 172, 212, 245),
              padding: EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Everyone will get the Job",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Internships",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Apply to 10,000+ internships for free",
                style: TextStyle(fontSize: 17),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "POPULAR CITIES",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
                height: 200,
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Container(
                        height: 170.0,
                        width: 130.0,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 212, 208, 208)),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Color.fromARGB(255, 255, 255, 255),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 255, 255, 255),
                              blurRadius: 15.0, // soften the shadow
                              spreadRadius: 5.0, //extend the shadow
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.all(10),
                                height: 150,
                                child: Image.network(cities[index]['url']!)),
                            Text(cities[index]['name']!)
                          ],
                        ),
                      );
                    },
                    itemCount: cities.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true)),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "POPULAR CATEGORIES",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
                height: 200,
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Container(
                        height: 170.0,
                        width: 130.0,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 212, 208, 208)),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Color.fromARGB(255, 255, 255, 255),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 255, 255, 255),
                              blurRadius: 15.0, // soften the shadow
                              spreadRadius: 5.0, //extend the shadow
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.all(10),
                                height: 150,
                                child:
                                    Image.network(categories[index]['url']!)),
                            Text(categories[index]['name']!)
                          ],
                        ),
                      );
                    },
                    itemCount: categories.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true)),
            SizedBox(
              height: 10,
            ),
            InkWell(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "View all Internships >",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                ),
                onTap: (() => {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainWidget(2)))
                    })),
            SizedBox(
              height: 10,
            ),
            InkWell(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "View all JOB Openings >",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                ),
                onTap: (() => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainWidget(1)))
                    })),
          ],
        ));
  }
}
