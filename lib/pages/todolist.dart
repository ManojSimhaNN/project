import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:companion_app/services/database.dart';
import 'package:flutter/material.dart';
import 'package:random_string/random_string.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  bool today = true, tomorrow = false, nextweek = false;
  bool suggest = false;
  TextEditingController todocontroller = new TextEditingController();
  Stream? todoStream;

  getontheload() async {
    todoStream = await DatabaseMethodsTodo().getalltheWork(today
        ? "Today"
        : tomorrow
            ? "Tomorrow"
            : "Next Week");
    setState(() {});
  }

  @override
  void initState() {
    getontheload();
    super.initState();
  }

  Widget allWork() {
    return StreamBuilder(
        stream: todoStream,
        builder: (context, AsyncSnapshot snapshot) {
          return snapshot.hasData
              ? ListView.builder(
                  shrinkWrap: true,
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot ds = snapshot.data.docs[index];
                    return CheckboxListTile(
                      activeColor: Colors.black,
                      title: Text(
                        ds["Work"],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      value: ds["Yes"],
                      onChanged: (newValue) async {
                        await DatabaseMethodsTodo().updateifTicked(
                            ds["Id"],
                            today
                                ? "Today"
                                : tomorrow
                                    ? "Tomorrow"
                                    : "Next Week");
                        setState(() {});
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                    );
                  })
              : CircularProgressIndicator();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          openBox();
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
          size: 30.0,
        ),
      ),
      backgroundColor: Color.fromARGB(255, 0, 50, 80),
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 30.0,
          left: 30,
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Hello",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Good Morning",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                today
                    ? Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 5.0,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            "Today",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () async {
                          today = true;
                          tomorrow = false;
                          nextweek = false;
                          await getontheload();
                          setState(() {});
                        },
                        child: Text(
                          "Today",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                tomorrow
                    ? Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 5.0,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            "Tomorrow",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () async {
                          today = false;
                          tomorrow = true;
                          nextweek = false;
                          await getontheload();
                          setState(() {});
                        },
                        child: Text(
                          "Tomorrow",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                nextweek
                    ? Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 5.0,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            "Next Week",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () async {
                          today = false;
                          tomorrow = false;
                          nextweek = true;
                          await getontheload();
                          setState(() {});
                        },
                        child: Text(
                          "Next Week",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            allWork(),
          ],
        ),
      ),
    );
  }

  Future openBox() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            content: SingleChildScrollView(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.cancel,
                          ),
                        ),
                        SizedBox(
                          width: 30.0,
                        ),
                        Text(
                          "Add the work To Do",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Add text",
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: TextField(
                        controller: todocontroller,
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: "Enter Text"),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        String id = randomAlphaNumeric(10);
                        Map<String, dynamic> userTodo = {
                          "Work": todocontroller.text,
                          "Id": id,
                          "Yes": false,
                        };
                        today
                            ? DatabaseMethodsTodo().addTodayWork(userTodo, id)
                            : tomorrow
                                ? DatabaseMethodsTodo()
                                    .addTomorrowWork(userTodo, id)
                                : DatabaseMethodsTodo()
                                    .addNextWeekWork(userTodo, id);
                        Navigator.pop(context);
                      },
                      child: Center(
                        child: Container(
                          width: 100,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(
                                10,
                              )),
                          child: Center(
                            child: Text(
                              "Add",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ));
}
