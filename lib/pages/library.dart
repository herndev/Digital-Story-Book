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
      backgroundColor: Colors.cyan[700],
      appBar: AppBar(
        backgroundColor: Colors.amber[300],
        elevation: 0,
        foregroundColor: Colors.cyan[700],
        title: Row(
          children: [
            Text(
              "SciEflix",
              style: TextStyle(
                color: Colors.cyan[700],
              ),
            ),
          ],
        ),
      ),
      body: Center(
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
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Divider(
                color: Colors.white,
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
                        Text(
                          "Photosythesis",
                          style: TextStyle(color: Colors.white),
                        )
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
                        Text(
                          "Photosythesis",
                          style: TextStyle(color: Colors.white),
                        )
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
                        Text(
                          "Photosythesis",
                          style: TextStyle(color: Colors.white),
                        )
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
                        Text(
                          "Photosythesis",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: null,
      bottomSheet: null,
    );
  }
}
