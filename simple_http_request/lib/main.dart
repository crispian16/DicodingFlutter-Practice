import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_http_request/models/album_page.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AlbumPage(),
    ),
  );
}
