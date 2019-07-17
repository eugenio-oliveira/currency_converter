import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async;
import 'dart:convert';

const request = "https://api.hgbrasil.com/finance?format=json&key=3d2cb847";
void main() async {

  http.Response response = await http.get(request);
  print(json.decode(response.body)["results"]["currencies"]["USD"]);

  runApp(MaterialApp(
    title: "Currency Converter v1.0",
    home: Container(),
  ));
}


/*
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
*/
