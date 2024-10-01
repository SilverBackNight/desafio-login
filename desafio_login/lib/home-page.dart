import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('lib/assets/leon-avatar.jpg'),
        ), // CircleAvatar
      ), // Padding
    ); // Hero

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Bem Vindo Leon S. Kennedy',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ), // Text
    ); // Padding

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Leon S. Kennedy. Informações Classificadas.',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ), // Text
    ); // Padding

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]), // LinearGradient
      ), // BoxDecoration
      child: Column(
        children: <Widget>[alucard, welcome, lorem],
      ), // Column
    ); // Container

    return Scaffold(
      appBar: new AppBar(
        title: Text('Banco de Dados RE'),
      ), // AppBar
      body: body,
    ); // Scaffold
  }
}