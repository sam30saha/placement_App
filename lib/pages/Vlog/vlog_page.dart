import 'dart:async';

import 'package:flutter/material.dart';
import 'package:placement/component/post.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var name = ['Avirup Pal', 'Avirup Pal', 'Avirup Pal', 'Avirup Pal'];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.separated(
      itemBuilder: (context, index) {
        return Post(name[index]);
      },
      separatorBuilder: (context, index) {
        return Divider(height: 4, thickness: 2, color: Colors.transparent);
      },
      itemCount: name.length,
      scrollDirection: Axis.vertical,
    )
        // child: Post("hi there"),
        );
  }
}
