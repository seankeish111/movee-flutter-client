import 'dart:async';
import 'dart:math';
import 'package:movee/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';





class home_page extends StatefulWidget {
  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  final todoController = TextEditingController();



  void addToDo() async {
    if (todoController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Empty title"),
        duration: Duration(seconds: 2),
      ));
      return;
    }
    await saveTodo(todoController.text);
    setState(() {
      todoController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Enquiry Form"),
    backgroundColor: Colors.redAccent,
    centerTitle: true,
    ),
        body: Column(
            children: <Widget>[
        Column(
          children: [
            Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              verticalDirection: VerticalDirection.down,
              children: [
                SizedBox(
                  height: 300,
                  width: 300,
                  child: Column(


                    children: <Widget>[
                      Expanded(
                        child: Container(
                          height: 400,
                          width: 400,
                          child: TextField(
                            autocorrect: true,
                            textCapitalization: TextCapitalization.sentences,
                            controller: todoController,
                            decoration: InputDecoration(
                                labelText: "Name",
                                labelStyle: TextStyle(color: Colors.redAccent
                                ),
                            ),
                          ),


                        ),
                      ),

                      Expanded(
                        child: Container(
                          height: 400,
                          width: 400,
                          child: TextField(
                            autocorrect: true,
                            textCapitalization: TextCapitalization.sentences,
                            controller: todoController,
                            decoration: InputDecoration(
                              labelText: "Name",
                              labelStyle: TextStyle(color: Colors.redAccent
                              ),
                            ),
                          ),


                        ),
                      ),














                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            onPrimary: Colors.white,
                            primary: Colors.redAccent,
                          ),
                          onPressed: addToDo,
                          child: Text("Submit")),
                    ],
                  ),
                ),
              ],
            )),
          ],
        ),


          ],
        ),
    );
  }
  Future<void> saveTodo(String AddToDo) async {
    final todo = ParseObject('Todo')..set('test', AddToDo)..set('done', false);
    await todo.save();
  }

  Future<List<ParseObject>> getTodo() async {
    await Future.delayed(Duration(seconds: 2), () {});
    return [];
  }

  Future<void> updateTodo(String id, bool done) async {
    await Future.delayed(Duration(seconds: 1), () {});
  }

  Future<void> deleteTodo(String id) async {
    await Future.delayed(Duration(seconds: 1), () {});
  }





}
