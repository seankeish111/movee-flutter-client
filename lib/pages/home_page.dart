import 'dart:async';
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
        Container(
        padding: EdgeInsets.fromLTRB(17.0, 1.0, 7.0, 1.0),
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
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
          ],
        )),

    Expanded(
        child: FutureBuilder<List<ParseObject>>(
            future: getTodo(),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                case ConnectionState.waiting:
                  return Center(
                    child: Container(
                        width: 100,
                        height: 100,
                        child: CircularProgressIndicator()),
                  );

                default:
                  if (snapshot.hasError) {
                    return Center(
                      child: Text("Error..."),
                    );
                  }
                  if (!snapshot.hasData) {
                    return Center(
                      child: Text("No Data..."),
                    );
                  } else {
                    return ListView.builder(
                        padding: EdgeInsets.only(top: 10.0),
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                            //*************************************
                            //Get Parse Object Values
                            final varTodo = snapshot.data![index];
                            final varTitle = '';
                            final varDone = false;
                            //*************************************

                            return ListTile(
                              title: Text(varTitle),
                              leading: CircleAvatar(
                                child: Icon(
                                    varDone ? Icons.check : Icons.error),
                                backgroundColor:
                                    varDone ? Colors.green : Colors.blue,
                                foregroundColor: Colors.white,
                              ),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Checkbox(
                                      value: varDone,
                                      onChanged: (value) async {
                                      await updateTodo(
                                          varTodo.objectId!, value!);
                                      setState(() {
                                      //Refresh UI
                                      });
                                    }),
                                  IconButton(
                                    icon: Icon(
                                      Icons.delete,
                                      color: Colors.blue,
                                    ),
                                    onPressed: () async {
                                      await deleteTodo(varTodo.objectId!);
                                      setState(() {
                                        final snackBar = SnackBar(
                                          content: Text("Todo deleted!"),
                                          duration: Duration(seconds: 2),
                                          );
                                          ScaffoldMessenger.of(context)
                                          ..removeCurrentSnackBar()
                                          ..showSnackBar(snackBar);
                                      });
                                    },
                                  )
                                ],
                              ),
                            );
                        });
                    }
                  }
                }))
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
