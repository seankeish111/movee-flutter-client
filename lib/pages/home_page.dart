import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';


class home_page extends StatefulWidget {


  @override
  State<home_page> createState() => _home_pageState();
}

final _formKey = GlobalKey<FormBuilderState>();

class _home_pageState extends State<home_page> {

  int counter = 0;
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Home'), backgroundColor: Colors.redAccent,
    ),

    body: FormBuilder(
      key: _formKey,
      child: Column(
        children: [
          FormBuilderTextField(
            obscureText: true,
              decoration:  const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password'
              ),
              name: 'textField'),

          FormBuilderTextField(
              name: 'textField'),
          FloatingActionButton(
            onPressed: (){}, child: Text('Submit'),),
        ],
      ) ,
    ),

  );
}