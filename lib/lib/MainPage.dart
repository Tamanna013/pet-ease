import 'package:flutter/material.dart';
import 'package:flutter_application/AdoptionCenters.dart';
import 'package:flutter_application/Blogs.dart';
import 'package:flutter_application/Mydrawer.dart';
import 'package:flutter_application/Services.dart';
import 'package:flutter_application/PetEssential.dart';
import 'package:flutter_application/Chatroom.dart';
import 'package:flutter_application/TaskScheduling.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainPage(),
    );
  }
}

class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        child: const Icon(Icons.chat),
        backgroundColor: Colors.lightBlue[50],
      ), //
      appBar: AppBar(
        title: const Text(
          'PetEase',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
            fontFamily: 'Montserrat',
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 143, 146, 147),
      ),
      backgroundColor: const Color(0xfff4f6fd),
      body: Container(
          padding: const EdgeInsets.only(left: 30, right: 30),
          // ignore: prefer_const_constructors
          child: ListView(
            children: <Widget>[
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "Hello Pet Lovers!",
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Roboto Slab',
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                          color: Colors.blueGrey),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
                width: 75,
              ),
              const Text('How can we',
                  style: TextStyle(
                    fontSize: 40,
                    height: 1.3,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Roboto Slab',
                  )),
              const Text('HELP',
                  style: TextStyle(
                      fontSize: 40,
                      height: 1.3,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Roboto Slab',
                      color: Colors.blueGrey)),
              const Text('your pets',
                  style: TextStyle(
                    fontSize: 40,
                    height: 1.3,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Roboto Slab',
                  )),
              const Text('today?',
                  style: TextStyle(
                    fontSize: 40,
                    height: 1.3,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Roboto Slab',
                  )),
              const SizedBox(
                height: 10,
              ),
              Flexible(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          courseWidget(
                              'SERVICES',
                              "Personalized care for your pets.",
                              'img1',
                              const Color.fromARGB(255, 99, 166, 208),
                              const Color.fromARGB(255, 190, 205, 212)),
                          const SizedBox(
                            height: 20,
                          ),
                          courseWidget(
                              'PET ESSENTIALS',
                              'Everything your pet needs, all in one place.',
                              'img3',
                              const Color.fromARGB(255, 190, 205, 212),
                              const Color.fromARGB(255, 255, 255, 255)),
                          const SizedBox(
                            height: 20,
                          ),
                          courseWidget(
                              'BLOGS',
                              "Read the latest tips and stories for pet care.",
                              'img5',
                              const Color.fromARGB(255, 99, 166, 208),
                              const Color.fromARGB(255, 190, 205, 212)),
                        ],
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const SizedBox(
                            height: 50,
                          ),
                          courseWidget(
                              'TASK SCHEDULING',
                              'Plan and track tasks with ease.',
                              'img2',
                              const Color.fromARGB(255, 190, 205, 212),
                              const Color.fromARGB(255, 255, 255, 255)),
                          const SizedBox(
                            height: 20,
                          ),
                          courseWidget(
                              'ADOPTION CENTERS',
                              'Find trusted adoption centers near you.',
                              'img4',
                              const Color.fromARGB(255, 190, 205, 212),
                              const Color.fromARGB(255, 99, 166, 208)),
                          const SizedBox(
                            height: 20,
                          ),
                          courseWidget(
                              'CHATROOM',
                              'Join the conversation with fellow pet lovers.',
                              'img6',
                              const Color.fromARGB(255, 190, 205, 212),
                              const Color.fromARGB(255, 255, 255, 255)),
                        ],
                      )),
                ],
              ))
            ],
          )),
    );
  }

  Container courseWidget(String category, String title, String img,
      Color categoryColor, Color bgColor) {
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
      ),
      child: InkWell(
          onTap: () {
            // Navigate based on category
            if (category == 'SERVICES') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Services()),
              );
            } else if (category == 'PET ESSENTIALS') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Petessentials()),
              );
            } else if (category == 'BLOGS') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Blogs()),
              );
            } else if (category == 'TASK SCHEDULING') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Taskscheduling()),
              );
            } else if (category == 'ADOPTION CENTERS') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AdoptionCenters()),
              );
            } else if (category == 'CHATROOM') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Chatroom()),
              );
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: categoryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: Text(
                  '$category',
                  style: TextStyle(
                    color: (categoryColor == const Color.fromARGB(255, 143, 146, 147)
                        ? const Color.fromARGB(233, 140, 196, 234)
                        : Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text('$title',
                  style: TextStyle(
                      color: (bgColor == const Color.fromARGB(255, 143, 146, 147)
                          ? Colors.white
                          : Colors.black))),
              const SizedBox(
                height: 10,
              ),
              Hero(
                tag: '$img',
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/images/$img.png'),
                  )),
                ),
              )
            ],
          )),
    );
  }
}
