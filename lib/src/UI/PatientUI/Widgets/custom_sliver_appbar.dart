// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TSilvarAppBar extends StatefulWidget {
  const TSilvarAppBar({super.key});

  @override
  State<TSilvarAppBar> createState() => _TSilvarAppBarState();
}

class _TSilvarAppBarState extends State<TSilvarAppBar> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text("Welcome"),
        )
      ],
    );
  }
}
