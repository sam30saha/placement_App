import 'package:flutter/material.dart';
import 'package:placement/component/main_widget.dart';
import 'package:placement/component/jobView.dart';

import '../../component/InternshipView.dart';

class InternshipPage extends StatefulWidget {
  const InternshipPage({super.key});

  @override
  State<InternshipPage> createState() => _InternshipPageState();
}

class _InternshipPageState extends State<InternshipPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
          // color: Colors.lightBlue,
          child: ListView.builder(
        itemBuilder: (context, index) {
          return InternshipView();
        },
        itemCount: 5,
      ));
  }
}