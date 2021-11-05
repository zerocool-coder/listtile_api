import 'dart:io';
import 'dart:ui';
import 'package:listtile_api/screens/first_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Firstwidget extends StatelessWidget {
  dynamic first;
  Firstwidget({Key? Key, this.first}) : super(key: Key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Expanded(
        child: Column(children: [
          ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.gannett-cdn.com/-mm-/f15dd455f510fdb27a4a3ad338ad49344e1fbe42/c=0-4-2996-1697/local/-/media/2016/07/12/USATODAY/USATODAY/636039163940708340-XXX-MR-ROBOT-HOODIE-210-74205396.JPG?width=2996&height=1693&fit=crop&format=pjpg&auto=webp'),
              ),
              title: Text(first['name']),
              subtitle: Text(first['email']),
              trailing: Icon(Icons.more_horiz),
              contentPadding: EdgeInsets.all(20),
              dense: true),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
              ),
              Text(first['body']),
            ],
          ),
          SizedBox(
            height: 20,
          )
        ]),
      ),
    );
  }
}
