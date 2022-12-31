import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List l1 = [];
  List l2 = [];
  int i = 0, n = 0, b = 0;
  TextEditingController txtno = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text("Otp generator", style: TextStyle(fontSize: 25)),
            centerTitle: true,
            backgroundColor: Colors.blue.shade300),
        body: Stack(
          children: [
            Align(
              alignment: Alignment(3, -1.25),
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue.shade300
                ),
              ),
            ),
            Align(
              alignment: Alignment(-3, -1.25),
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue.shade300
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(35),
                child: Container(
                  height: 500,
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(25),boxShadow: [BoxShadow(color: Colors.black12,blurRadius: 15,spreadRadius: 5,offset: Offset(0, 10))]),
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.blue.shade100,
                                borderRadius: BorderRadius.circular(50)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: TextField(
                                controller: txtno,
                                decoration: InputDecoration(
                                  hintText: "Enter the no",
                                  hintStyle: TextStyle(color: Colors.blue),
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            String a = txtno.text;
                            n = int.parse(a);
                            l2.clear();
                            l1.clear();
                            setState(() {
                              var rnd = Random();
                              for (i = 0; i < n; i++) {
                                b = rnd.nextInt(9);
                                l2.add(b);
                              }
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: 125,
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.blue.shade300,
                                borderRadius: BorderRadius.circular(8),
                                // border: Border.all(
                                //     color: Colors.blue.shade700, width: 2),
                              ),
                              child: Text("Creat",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25)),
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: l2
                                .asMap()
                                .entries
                                .map((e) => Padding(
                                      padding: const EdgeInsets.all(2),
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: Colors.blue.shade300,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Text(
                                          "${l2[e.key]}",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25),
                                        ),
                                      ),
                                    ))
                                .toList(),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            String a = txtno.text;
                            n = int.parse(a);
                            l2.clear();
                            l1.clear();
                            setState(() {
                              var rnd = Random();
                              for (i = 0; i < n; i++) {
                                b = rnd.nextInt(9);
                                l2.remove(b);
                                Text("$l2");
                              }
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: 125,
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.blue.shade300,
                                borderRadius: BorderRadius.circular(8),
                                // border: Border.all(
                                //     color: Colors.blue.shade700, width: 2),
                              ),
                              child: Text("Reset",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
