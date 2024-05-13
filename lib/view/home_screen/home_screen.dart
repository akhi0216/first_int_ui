// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              // ====
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.black,
                      ),
                      Text(
                        "HabiGanj City",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 232, 231, 231),
                    child: Icon(Icons.sort_outlined),
                  )
                ],
              ),

              // ---
              SizedBox(
                height: 15,
              ),
              // -------
              Row(
                children: [
                  Text(" Find The",
                      style: TextStyle(color: Colors.black, fontSize: 40)),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "BEST",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              // --------------------------------
              Row(
                children: [
                  Text(" Food ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Around You",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),

              // -----------------------------------

              Container(
                padding: EdgeInsets.all(11),
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 232, 231, 231),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text("search your favourite food"),
                      ],
                    ),
                    Icon(
                      Icons.tune,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              // ------------------------------------------------------

              SizedBox(
                height: 30,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 7),
                child: Row(
                  children: [
                    Text(
                      "Find",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "5km",
                      style: TextStyle(color: Colors.orange, fontSize: 16),
                    ),
                    Icon(
                      Icons.navigate_next,
                      color: Colors.orange,
                    )
                  ],
                ),
              ),
              // ----------------------------------------------------
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    // height: 30,
                    // width: 80,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Text(
                      "salads",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),

                  // --
                  Container(
                    padding: EdgeInsets.all(12),
                    // height: 30,
                    // width: 80,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 232, 231, 231),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Text(
                      "Hot Sale",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  // =====
                  Container(
                    padding: EdgeInsets.all(12),
                    // height: 30,
                    // width: 70,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 232, 231, 231),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Text(
                      "popularity",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),

              // -----------------------------------------------------grid

              SizedBox(
                height: 15,
              ),

              Expanded(
                  child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 280),
                itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 232, 231, 231),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  // height: 50,
                  // width: 50,

                  child: Column(
                    children: [
                      // ============
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.favorite_border),
                        ],
                      ),

                      CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/4198024/pexels-photo-4198024.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                        backgroundColor: Colors.purple,
                      ),
                      Text(
                        "Avocado Salad",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "20min",
                            style: TextStyle(color: Colors.grey, fontSize: 17),
                          ),
                          Text(
                            "4.5",
                            style: TextStyle(color: Colors.grey, fontSize: 17),
                          )
                        ],
                      ),

                      // ---------------

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 13),
                            child: Text(
                              "\$12.00",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                          Container(
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                    topLeft: Radius.circular(20))),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
