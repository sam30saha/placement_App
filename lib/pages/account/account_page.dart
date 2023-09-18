import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        body: Container(
      color: Color.fromARGB(255, 255, 255, 255),
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          Container(
              height: MediaQuery.of(context).size.height / 1.8,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Color.fromARGB(255, 42, 47, 79),
              ),
              child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 30,
                      ),
                      Row(children: [
                        InkWell(
                          child: Container(
                            height: MediaQuery.of(context).size.height / 10,
                            width: MediaQuery.of(context).size.height / 10,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color.fromARGB(255, 145, 127, 179),
                            ),
                            child: Image(
                              image: AssetImage("images/back.png"),
                            ),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        )
                      ]),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 26,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                              radius: 86,
                              backgroundColor:
                                  Color.fromARGB(255, 145, 127, 179),
                              child: CircleAvatar(
                                radius: 80,
                                backgroundImage: NetworkImage(
                                    "https://upload.wikimedia.org/wikipedia/en/3/35/Supermanflying.png"),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 26,
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            " " + "Superman",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 35,
                                color: Colors.white),
                          )),
                      SizedBox(
                        height: 7,
                      )
                    ],
                  ))),
          Container(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Emal Id",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "superman150@gmail.com",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 18),
                            ))
                      ],
                    ),
                    Divider(
                      color: Color.fromARGB(255, 145, 127, 179),
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Contact No",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "91157663318",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 18),
                            ))
                      ],
                    ),
                    Divider(
                      color: Color.fromARGB(255, 145, 127, 179),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Address",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "85, DBN Road, Hind, Hooghly- 712233",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 18),
                            )),
                      ],
                    ),
                  ]),
            ),
          ),
          Expanded(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromARGB(255, 229, 190, 236)),
                    child: Center(
                        child: Text(
                      "LOGOUT",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 30,
                          color: Color.fromARGB(255, 42, 47, 79)),
                    )),
                  ),
                ))
          ]))
        ],
      ),
    )));
  }
}

// Padding(
//         padding: EdgeInsets.all(10),
//         child: ListView(
//           children: [
//             Padding(
//                 padding: EdgeInsets.all(50),
//                 child: CircleAvatar(
//                   radius: 150,
//                   backgroundImage: NetworkImage(
//                       "https://media.licdn.com/dms/image/D4D03AQEV6Mfb7EABRA/profile-displayphoto-shrink_800_800/0/1663575014178?e=1686787200&v=beta&t=25cx2bRJQu997CO136FbMz9QMwEPUWdGldA825T4z7Q"),
//                 )),
//             Align(
//                 alignment: Alignment.center,
//                 child: Text(
//                   "AVIRUP PAL",
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
//                 )),
//             Align(
//                 alignment: Alignment.center,
//                 child: Text(
//                   "avirup150@gmail.com",
//                   style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
//                 )),
//             SizedBox(
//               height: 10,
//             ),
//             ElevatedButton(onPressed: () {}, child: Text("Logout"),style: ButtonStyle(),)
//           ],
//         ),
//       ),
