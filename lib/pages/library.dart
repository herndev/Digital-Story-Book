import 'package:flutter/material.dart';
import 'package:story/component/colors.dart';

var hc = Hcolor();

class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: hc.lime,
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Digital Story Book"),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Image.asset("assets/wave.png"),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Library",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Wrap(
                      direction: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              SizedBox(
                                width: size.width * 0.25,
                                child: Image.asset("assets/book-icon.png"),
                              ),
                              Text("Photosythesis")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              SizedBox(
                                width: size.width * 0.25,
                                child: Image.asset("assets/book-icon.png"),
                              ),
                              Text("Photosythesis")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              SizedBox(
                                width: size.width * 0.25,
                                child: Image.asset("assets/book-icon.png"),
                              ),
                              Text("Photosythesis")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              SizedBox(
                                width: size.width * 0.25,
                                child: Image.asset("assets/book-icon.png"),
                              ),
                              Text("Photosythesis")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Image.asset("assets/wave2.png"),
          ],
        ),
      ),
      bottomNavigationBar: null,
      bottomSheet: null,
    );
  }
}
