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

    body: Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),


      child: FormBuilder(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: 20,
              ),

              child: FormBuilderTextField(
                obscureText: true,
                  decoration:  const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'First name',
                    border: OutlineInputBorder(

                    ),
                  ),
                  name: 'textField'),
            ),

            Padding(
              padding: const EdgeInsets.only(
                bottom: 20,
              ),
              child: FormBuilderTextField(
                  obscureText: true,
                  decoration:  const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'Second name',
                      border: OutlineInputBorder(),
                  ),
                  name: 'textField'),
            ),

            Padding(
              padding: const EdgeInsets.only(
                bottom: 20,

              ),
              child: FormBuilderTextField(
                  obscureText: true,
                  decoration:  const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'Number of bedrooms',
                      border: OutlineInputBorder(),
                  ),
                  name: 'textField'),
            ),

            Padding(
              padding: const EdgeInsets.only(
                bottom: 20,
              ),
              child: FormBuilderTextField(
                  obscureText: true,
                  decoration:  const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'How many flights of stairs',
                      border: OutlineInputBorder(),
                  ),
                  name: 'textField'),
            ),


            FormBuilderTextField(
                obscureText: true,
                decoration:  const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Do you need comprehensive insurance?',
                    border: OutlineInputBorder(),
                ),
                name: 'textField'),


            FloatingActionButton(

              onPressed: (){}, child: Padding(
                padding: const EdgeInsets.all(.0),
                child: Text('Submit'),
              ),),
          ],
        ) ,
      ),
    ),

  );
}