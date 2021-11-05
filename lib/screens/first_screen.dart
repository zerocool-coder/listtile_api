import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listtile_api/services/network.dart';
import 'package:listtile_api/widgets/first_widget.dart';

class Firstscreen extends StatefulWidget {
  const Firstscreen({Key? key}) : super(key: key);

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  Future<List<dynamic>>? listofComments;

  @override
  void initState() {
    super.initState();
    listofComments = Network().getPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('1st screen')),
        body: FutureBuilder<List<dynamic>>(
            future: listofComments,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                print(snapshot.data);
                return ListView.builder(
                  itemBuilder: (context, index) {
                    return Firstwidget(first: snapshot.data![index]);
                  },
                );
              }
              return Center(child: CircularProgressIndicator());
            }));

  }
}
