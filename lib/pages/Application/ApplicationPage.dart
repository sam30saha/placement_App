import 'package:flutter/material.dart';

class ApplicationPage extends StatefulWidget {
  const ApplicationPage({super.key});

  @override
  State<ApplicationPage> createState() => _ApplicationPageState();
}

class _ApplicationPageState extends State<ApplicationPage> {
  bool isAvailable = false;
  bool isNotAvailable = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Application",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 42, 47, 79),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 223, 141, 237),
      ),
      body: Padding(
          padding: EdgeInsets.all(15),
          child: ListView(
            children: [
              SizedBox(
                child: Text(
                  "Your Resume",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                child: Text(
                  "Please Upload your current resume which have all the details of your skills and privious experiences and your educational details",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.grey,
                      child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Text("Choose File")),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Text(
                        "Upload Resume",
                        style: TextStyle(fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Text(
                  "Cover Letter",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                child: Text(
                  "Why should you be hired for this role?",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 100,
                child: TextField(
                  // style: TextStyle(fontSize: 25),
                  maxLines: 4,
                  // minLines: 2,
                  // maxLines: null,
                  // expands: true,

                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Answer',
                      hintText:
                          "Mention in details what relevent skill or past experience you have for this Internship.What excites you about this Internship?Why wouldyou be a good fit?"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Text(
                  "Your Availability",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                child: Text(
                  "Confirm your Availability",
                  style: TextStyle(
                    color: Color.fromARGB(221, 48, 47, 47),
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                      checkColor: Colors.blue,
                      activeColor: Colors.blue,
                      value: this.isAvailable,
                      onChanged: (bool? value) {
                        setState(() {
                          isAvailable = value!;
                        });
                      }),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Yes I'm Available",
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      checkColor: Colors.blue,
                      activeColor: Colors.blue,
                      value: this.isNotAvailable,
                      onChanged: (bool? value) {
                        setState(() {
                          isNotAvailable = value!;
                        });
                      }),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "No",
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              Container(
                color: Color.fromARGB(255, 229, 190, 236),
                child: Padding(
                  padding: EdgeInsets.all(18),
                  child: Text(
                      "If an employer asks you to pay any security deposit,register fees or want any kind of money etc.do not pay.remember we doesn't charge a fee from students to apply to a job or internship & we don't allow other companies to do so either"),
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                "Submit",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              )))
                    ],
                  )
                  )
            ],
          )),
    );
  }
}
