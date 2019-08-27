import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';

import 'screens/home_material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Bitcoin trader';
    return MaterialApp(
      title: title,
      home: HomeMaterial(
        title: title,
        channel: IOWebSocketChannel.connect('wss://ws.kraken.com'),
      ),
    );
  }
}
