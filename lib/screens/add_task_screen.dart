import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/tasks.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String task;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 25,
          ),
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.lightBlueAccent,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (value) => task = value,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 5,
                  color: Colors.lightBlueAccent,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Consumer<Tasks>(
            builder: (context, tasks, _) => FlatButton(
              padding: EdgeInsets.symmetric(
                vertical: 20,
              ),
              color: Colors.lightBlueAccent,
              child: Text(
                'Add',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                tasks.add(task);
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
