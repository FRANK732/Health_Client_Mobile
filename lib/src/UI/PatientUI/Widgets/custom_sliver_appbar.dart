// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_it/get_it.dart';

class TSilvarAppBar extends StatefulWidget {
  const TSilvarAppBar({super.key});

  @override
  State<TSilvarAppBar> createState() => _TSilvarAppBarState();
}

class _TSilvarAppBarState extends State<TSilvarAppBar> {
  final globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 200.0,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('SliverAppBar Example'),
            background: SingleChildScrollView(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Your Card Content',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    elevation: 5,
                  ),
                ),
              ),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                // Add your onPressed code here!
              },
            ),
          ],
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
              onChanged: (value) {
                // Add your search logic here!
              },
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return Container(
              color: index.isOdd ? Colors.white : Colors.black12,
              height: 100.0,
              child: Center(
                child: Text('$index',
                    key: index == 2 ? globalKey : null, textScaleFactor: 5),
              ),
            );
          },
          childCount: 20,
        )),
      ],
    );
  }
}
