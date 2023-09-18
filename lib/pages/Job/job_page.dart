import 'package:flutter/material.dart';

import 'package:placement/component/jobView.dart';

class JobPage extends StatefulWidget {
  const JobPage({super.key});

  @override
  State<JobPage> createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.lightBlue,
        child: ListView.builder(
      itemBuilder: (context, index) {
        return JobView();
      },
      itemCount: 5,
    ));
  }
}
