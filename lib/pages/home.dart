import 'package:flutter/material.dart';
import 'package:story/component/colors.dart';
import 'package:story/component/input.dart';

var hc = Hcolor();

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var name = TextEditingController();
  var idnumber = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    name.dispose();
    idnumber.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: hc.lime,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 50,
            ),
            Spacer(),
            Text("Digital Story Book"),
            Spacer(),
            GestureDetector(
              onTap: () {
                openBottomModal();
              },
              child: Container(
                  height: 50,
                  width: 50,
                  child: Image.asset("assets/user-icon.png")),
            )
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Image.asset("assets/wave.png"),
            Expanded(
                child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset("assets/library-icon.png"),
                            ), // <-- Use 'Image.asset(...)' here
                            SizedBox(width: 12),
                            Text(
                              "OPEN LIBRARY",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 21),
                            ),
                          ],
                        ),
                      ),
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(5),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            // side: BorderSide(color: Colors.red)
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset("assets/quiz-icon.png"),
                            ), // <-- Use 'Image.asset(...)' here
                            SizedBox(width: 12),
                            Text(
                              "Take Quiz",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 21),
                            ),
                          ],
                        ),
                      ),
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(5),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(hc.skyblue),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            // side: BorderSide(color: Colors.red)
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
            Image.asset("assets/wave2.png"),
          ],
        ),
      ),
      bottomNavigationBar: null,
      bottomSheet: null,
    );
  }

  openBottomModal() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return StatefulBuilder(builder: (BuildContext context,
              StateSetter setState /*You can rename this!*/) {
            return Container(
              color: Color(0xFF737373),
              height: 450,
              child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).canvasColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        inputField(
                          controller: name,
                          validator: null,
                          icon: Icon(Icons.person),
                          hint: "Full name",
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        inputField(
                          controller: idnumber,
                          validator: null,
                          icon: Icon(Icons.card_membership),
                          hint: "ID number",
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Update data",
                              style: TextStyle(color: Colors.white),
                            ),
                            style:
                                ElevatedButton.styleFrom(primary: Colors.green),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Divider(),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Stories Read",
                              style: TextStyle(color: Colors.white),
                            ),
                            style:
                                ElevatedButton.styleFrom(primary: Colors.grey),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Quiz Scores",
                              style: TextStyle(color: Colors.white),
                            ),
                            style:
                                ElevatedButton.styleFrom(primary: Colors.grey),
                          ),
                        ),
                        Divider(),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.logout),
                                Text(
                                  " Logout",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            style:
                                ElevatedButton.styleFrom(primary: Colors.red),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: SizedBox(),
                        )
                      ],
                    ),
                  )),
            );
          });
        });
  }
}