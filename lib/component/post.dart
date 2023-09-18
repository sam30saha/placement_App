import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class Post extends StatefulWidget {
  final name;
  const Post(this.name);
  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return (Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/en/3/35/Supermanflying.png"),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    "XYZ company",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 11),
                  )
                ],
              )
            ],
          )),
      Image.network(
        "https://media.licdn.com/dms/image/D4D22AQFVBAVj1LOHcg/feedshare-shrink_800/0/1683872422368?e=1686787200&v=beta&t=uFmQN4JhBC9_wBn3kaypSOE24gVizNuujC3en-uNHYw",
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 3,
      ),
      // SizedBox(
      //   height: 5,
      // ),
      Padding(
          padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
          child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Post Title",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              ))),
      // SizedBox(
      //   height: 5,
      // ),
      Padding(
          padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
          child: const Text(
            "Hire for more than a resume! Hire for more than a resume! Hire for more than a resume! Hire for more than a resume! Hire for more than a resume! Hire for more than a resume! Hire for more than a resume! Hire for more than a resume!  Hire for more than a resume! ",
            style: TextStyle(fontSize: 13),
          )),
      Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Row(
            children: [
              IconWidget(
                  CupertinoIcons.heart, CupertinoIcons.heart_fill, Colors.red),
            ],
          ))
    ]));
  }
}

/////////////////

class IconWidget extends StatefulWidget {
  final IconData a;
  final IconData b;
  final Color c;
  const IconWidget(this.a, this.b, this.c);

  @override
  State<IconWidget> createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 40,
      color: widget.c,
      icon: AnimatedCrossFade(
          firstChild: Icon(
            widget.a,
            color: Colors.black,
          ),
          secondChild: Icon(widget.b),
          duration: Duration(microseconds: 100),
          crossFadeState:
              isLiked ? CrossFadeState.showSecond : CrossFadeState.showFirst),
      onPressed: () {
        setState(() {
          if (isLiked == false)
            isLiked = true;
          else
            isLiked = false;
        });
      },
    );
  }
}
