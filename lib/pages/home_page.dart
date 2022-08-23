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
  final FirstNameController = TextEditingController();
  final SecondNameController = TextEditingController();



  void addToDo() async {
    if (FirstNameController.text.trim().isEmpty) {

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Empty title"),
        duration: Duration(seconds: 2),
      ));
      return;
    }

    await saveFirstName(FirstNameController.text);
    await (SecondNameController.text);

    setState(() {
      FirstNameController.clear();

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
                        child: SizedBox(
                          child: Container(
                            height: 400,
                            width: 400,
                            child: TextField(
                              autocorrect: true,
                              textCapitalization: TextCapitalization.sentences,
                              controller: FirstNameController,
                              decoration: InputDecoration(
                                  labelText: "First name",
                                  labelStyle: TextStyle(color: Colors.redAccent
                                  ),
                              ),
                            ),
                          ),


                        ),


                      ),

                      Expanded(
                        child: SizedBox(
                          child: Container(
                            height: 400,
                            width: 400,
                            child: TextField(
                              autocorrect: true,
                              textCapitalization: TextCapitalization.sentences,
                              controller: SecondNameController,
                              decoration: InputDecoration(
                                labelText: "Second name",
                                labelStyle: TextStyle(color: Colors.redAccent
                                ),
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
  Future<void> saveFirstName (String AddToDo) async {
    final todo = ParseObject('DomesticEnquiry')..set('FirstName', AddToDo)..set('done', false);

    await todo.save();
  }

  Future<void> saveSecondName (String AddToDo) async {
    final todo = ParseObject('DomesticEnquiry')..set('SecondName', AddToDo)..set('done', false);

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
