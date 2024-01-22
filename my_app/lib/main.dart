import "package:flutter/material.dart";

void main() => runApp(const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 243, 233, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              //width: MediaQuery.of(context).size.width, WIDTH WITH MAX SCREEN WIDTH
              width: double.infinity, //Maximum width parent allows
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(20))),
              //borderRadius: BorderRadius.vertical(bottom: 20),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Find your ',
                    style: TextStyle(color: Colors.black87, fontSize: 25),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Inspiration',
                    style: TextStyle(fontSize: 40, color: Colors.black87),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(234, 233, 233, 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter you\'re search ',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                        icon: Icon(
                          Icons.search,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Hello World',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
